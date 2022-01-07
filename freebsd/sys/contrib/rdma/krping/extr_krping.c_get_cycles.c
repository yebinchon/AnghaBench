
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int64_t ;



__attribute__((used)) static __inline uint64_t
get_cycles(void)
{
 uint32_t low, high;
 __asm __volatile("rdtsc" : "=a" (low), "=d" (high));
 return (low | ((u_int64_t)high << 32));
}
