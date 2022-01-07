
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __softfloat_float_rounding_mode ;
 int* map ;

int
__flt_rounds()
{
 int mode;




 __asm __volatile("cfc1 %0,$31" : "=r" (mode));


 return map[mode & 0x03];
}
