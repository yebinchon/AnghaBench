
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int ddt_stat_t ;


 int ASSERT (int) ;

void
ddt_stat_add(ddt_stat_t *dst, const ddt_stat_t *src, uint64_t neg)
{
 const uint64_t *s = (const uint64_t *)src;
 uint64_t *d = (uint64_t *)dst;
 uint64_t *d_end = (uint64_t *)(dst + 1);

 ASSERT(neg == 0 || neg == -1ULL);

 while (d < d_end)
  *d++ += (*s++ ^ neg) - neg;
}
