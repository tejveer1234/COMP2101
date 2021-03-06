#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

#not setting the numbers to literal data, will be used to ask the user for numbers
#firstnum=5
#secondnum=2
read -p "Give me a number : " firstnum
read -p "Give me another number : " secondnum

sum=$((firstnum + secondnum))
sub=$((firstnum - secondnum))
division=$((firstnum / secondnum))
multiply=$((firstnum * secondnum))
rem=$((firstnum % secondnum))
power=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum subtraction $secondnum is $sub
$firstnum sum by $secondnum is $sum
$firstnum multiplication by $secondnum is $multiply
$firstnum division by $secondnum is $division with rem $rem
  - More precisely, it is $fpdividend
$firstnum power by $secondnum is $power
EOF
