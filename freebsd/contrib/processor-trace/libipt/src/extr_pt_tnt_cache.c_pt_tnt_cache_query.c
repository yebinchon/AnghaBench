
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_tnt_cache {int index; int tnt; } ;


 int pte_bad_query ;
 int pte_invalid ;

int pt_tnt_cache_query(struct pt_tnt_cache *cache)
{
 int taken;

 if (!cache)
  return -pte_invalid;

 if (!cache->index)
  return -pte_bad_query;

 taken = (cache->tnt & cache->index) != 0;
 cache->index >>= 1;

 return taken;
}
