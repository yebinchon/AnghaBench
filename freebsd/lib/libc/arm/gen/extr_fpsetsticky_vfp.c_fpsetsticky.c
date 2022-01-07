
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except ;


 int FP_X_MASK ;

fp_except
fpsetsticky(fp_except except)
{
 fp_except old, new;

 __asm __volatile("vmrs %0, fpscr" : "=&r"(old));
 new = old & ~(FP_X_MASK);
 new &= ~except;
 __asm __volatile("vmsr fpscr, %0" : : "r"(new));

 return (old & except);
}
