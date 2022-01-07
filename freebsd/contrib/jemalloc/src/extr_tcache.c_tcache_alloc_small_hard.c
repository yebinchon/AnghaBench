
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {scalar_t__ prof_accumbytes; int * arena; } ;
typedef TYPE_1__ tcache_t ;
typedef int szind_t ;
typedef int cache_bin_t ;
typedef int arena_t ;


 int arena_tcache_fill_small (int *,int *,TYPE_1__*,int *,int ,scalar_t__) ;
 int assert (int ) ;
 void* cache_bin_alloc_easy (int *,int*) ;
 scalar_t__ config_prof ;

void *
tcache_alloc_small_hard(tsdn_t *tsdn, arena_t *arena, tcache_t *tcache,
    cache_bin_t *tbin, szind_t binind, bool *tcache_success) {
 void *ret;

 assert(tcache->arena != ((void*)0));
 arena_tcache_fill_small(tsdn, arena, tcache, tbin, binind,
     config_prof ? tcache->prof_accumbytes : 0);
 if (config_prof) {
  tcache->prof_accumbytes = 0;
 }
 ret = cache_bin_alloc_easy(tbin, tcache_success);

 return ret;
}
