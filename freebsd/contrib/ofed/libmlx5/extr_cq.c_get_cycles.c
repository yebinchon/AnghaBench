
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static inline unsigned long get_cycles(void)
{
 uint32_t low, high;
 uint64_t val;
 asm volatile ("rdtsc" : "=a" (low), "=d" (high));
 val = high;
 val = (val << 32) | low;
 return val;
}
