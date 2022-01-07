
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_tnt_cache {scalar_t__ index; } ;


 int pte_invalid ;

int pt_tnt_cache_is_empty(const struct pt_tnt_cache *cache)
{
 if (!cache)
  return -pte_invalid;

 return cache->index == 0;
}
