
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
subtract_1918(uint32_t a, uint32_t b)
{

        const uint32_t cutoff = ((uint32_t) 1 << (32 - 1));

 if(a == b)
  return 0;
 if(a < b && b - a < cutoff) {
  return b-a;
 }
 if(a > b && a - b > cutoff) {
  return ((uint32_t)0xffffffff) - (a-b-1);
 }

 return 0;
}
