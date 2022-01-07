
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tcache_t ;
typedef int extent_t ;


 size_t arena_prof_demote (int *,int *,void*) ;
 int assert (int ) ;
 int cassert (int ) ;
 int config_prof ;
 int * iealloc (int *,void*) ;
 int large_dalloc (int *,int *) ;
 int opt_prof ;
 int sz_size2index (size_t) ;
 int tcache_dalloc_large (int ,int *,void*,int ,int) ;
 size_t tcache_maxclass ;
 int tsdn_tsd (int *) ;

void
arena_dalloc_promoted(tsdn_t *tsdn, void *ptr, tcache_t *tcache,
    bool slow_path) {
 cassert(config_prof);
 assert(opt_prof);

 extent_t *extent = iealloc(tsdn, ptr);
 size_t usize = arena_prof_demote(tsdn, extent, ptr);
 if (usize <= tcache_maxclass) {
  tcache_dalloc_large(tsdn_tsd(tsdn), tcache, ptr,
      sz_size2index(usize), slow_path);
 } else {
  large_dalloc(tsdn, extent);
 }
}
