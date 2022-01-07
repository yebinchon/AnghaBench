
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_msec_cache {int msec; } ;


 int pt_msec_cache_invalidate (struct pt_msec_cache*) ;
 int pt_msec_fini (int *) ;

void pt_msec_cache_fini(struct pt_msec_cache *cache)
{
 if (!cache)
  return;

 (void) pt_msec_cache_invalidate(cache);
 pt_msec_fini(&cache->msec);
}
