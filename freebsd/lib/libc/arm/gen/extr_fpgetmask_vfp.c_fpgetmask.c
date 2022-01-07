
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except_t ;
typedef int fp_except ;


 int FP_X_MASK ;

fp_except_t
fpgetmask(void)
{
 fp_except mask;

 __asm __volatile("vmrs %0, fpscr" : "=&r"(mask));

 return ((mask >> 8) & FP_X_MASK);
}
