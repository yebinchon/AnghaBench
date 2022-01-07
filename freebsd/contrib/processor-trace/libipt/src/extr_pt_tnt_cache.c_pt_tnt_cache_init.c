
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_tnt_cache {unsigned long long tnt; unsigned long long index; } ;



void pt_tnt_cache_init(struct pt_tnt_cache *cache)
{
 if (!cache)
  return;

 cache->tnt = 0ull;
 cache->index = 0ull;
}
