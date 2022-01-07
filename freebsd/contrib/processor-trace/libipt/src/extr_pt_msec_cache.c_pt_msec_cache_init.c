
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_msec_cache {int dummy; } ;


 int memset (struct pt_msec_cache*,int ,int) ;
 int pte_internal ;

int pt_msec_cache_init(struct pt_msec_cache *cache)
{
 if (!cache)
  return -pte_internal;

 memset(cache, 0, sizeof(*cache));

 return 0;
}
