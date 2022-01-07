
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
hw_cpuid(uint32_t *a, uint32_t *b, uint32_t *c, uint32_t *d)
{
 __asm__ volatile("cpuid"
        : "=a" (*a), "=b" (*b),
          "=c" (*c), "=d" (*d)
        : "a" (*a), "c" (*c)
        : "cc");
}
