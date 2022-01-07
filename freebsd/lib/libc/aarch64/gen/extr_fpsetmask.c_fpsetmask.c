
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int fp_except_t ;


 int FP_X_MASK ;

fp_except_t
fpsetmask(fp_except_t mask)
{
 uint64_t old, new;

 mask &= FP_X_MASK;


 __asm __volatile("mrs %0, fpcr" : "=&r"(old));
 new = old & ~FP_X_MASK;
 new |= mask;
 __asm __volatile("msr fpcr, %0" :: "r"(new));

 return ((fp_except_t)old);
}
