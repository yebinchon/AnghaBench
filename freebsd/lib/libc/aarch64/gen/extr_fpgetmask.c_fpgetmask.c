
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int fp_except_t ;


 int FP_X_MASK ;

fp_except_t
fpgetmask(void)
{
 uint64_t mask;


 __asm __volatile("mrs %0, fpcr" : "=&r"(mask));

 return (mask & FP_X_MASK);
}
