
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except_t ;


 int FSR_GET_TEM (unsigned int) ;

fp_except_t
fpgetmask()
{
 unsigned int x;

 __asm__("st %%fsr,%0" : "=m" (x));
 return (FSR_GET_TEM(x));
}
