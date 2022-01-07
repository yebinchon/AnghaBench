
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except ;


 int FP_X_MASK ;

fp_except
fpgetsticky(void)
{
 fp_except old;

 __asm __volatile("vmrs %0, fpscr" : "=&r"(old));

 return (old & FP_X_MASK);
}
