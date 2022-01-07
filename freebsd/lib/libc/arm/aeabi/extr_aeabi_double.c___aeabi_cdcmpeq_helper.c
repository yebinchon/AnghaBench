
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;



int
__aeabi_cdcmpeq_helper(float64 a, float64 b)
{
 int quiet = 0;


 if ((a << 1) > 0xffe0000000000000ull) {

  if ((a & 0x0008000000000000ull) == 0)
   return (0);

  quiet = 1;
 }


 if ((b << 1) > 0xffe0000000000000ull) {

  if ((b & 0x0008000000000000ull) == 0)
   return (0);

  quiet = 1;
 }

 return (quiet);
}
