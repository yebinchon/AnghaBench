
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;



int
__aeabi_cfcmpeq_helper(float32 a, float32 b)
{
 int quiet = 0;


 if ((a << 1) > 0xff000000u) {

  if ((a & 0x00400000u) == 0)
   return (0);

  quiet = 1;
 }


 if ((b << 1) > 0xff000000u) {

  if ((b & 0x00400000u) == 0)
   return (0);

  quiet = 1;
 }

 return (quiet);
}
