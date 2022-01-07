
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t
cp15_cntpct_get(void)
{
 uint64_t reg;

 __asm __volatile("mrs %0, cntpct_el0" : "=r" (reg));
 return (reg);
}
