#!/bin/sh
# Get parameters from outside, Output value within a specified range

start=$1
end=$2

#========================
echo "One way"
tmp=$start
while(($tmp<=$end))
do
        echo $tmp

        (( tmp++ ))
done
#========================
echo "Another way"
tmp=$start
while true;do
        (($tmp>$end)) && break

        echo $tmp

        (( tmp++ ))
done
#========================
