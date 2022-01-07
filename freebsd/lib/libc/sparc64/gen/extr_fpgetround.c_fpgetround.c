
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_rnd_t ;


 scalar_t__ FSR_GET_RD (unsigned int) ;

fp_rnd_t
fpgetround()
{
 unsigned int x;

 __asm__("st %%fsr,%0" : "=m" (x));
 return ((fp_rnd_t)FSR_GET_RD(x));
}
