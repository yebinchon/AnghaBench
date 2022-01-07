
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int* map ;

int
__flt_rounds(void)
{
 uint64_t fpcr;

 asm volatile("mrs	%0, fpcr" : "=r" (fpcr));
 return map[(fpcr >> 22) & 3];
}
