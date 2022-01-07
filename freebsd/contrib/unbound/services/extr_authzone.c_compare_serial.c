
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SERIAL_BITS ;

int
compare_serial(uint32_t a, uint32_t b)
{
 const uint32_t cutoff = ((uint32_t) 1 << (SERIAL_BITS - 1));

 if (a == b) {
  return 0;
 } else if ((a < b && b - a < cutoff) || (a > b && a - b > cutoff)) {
  return -1;
 } else {
  return 1;
 }
}
