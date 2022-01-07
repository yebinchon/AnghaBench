
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except_t ;
typedef int fp_except ;


 int FP_X_MASK ;

fp_except_t
fpsetmask(fp_except_t mask)
{
 fp_except old, new;

 __asm __volatile("vmrs %0, fpscr" : "=&r"(old));
 mask = (mask & FP_X_MASK) << 8;
 new = (old & ~(FP_X_MASK << 8)) | mask;
 __asm __volatile("vmsr fpscr, %0" : : "r"(new));

 return ((old >> 8) & FP_X_MASK);
}
