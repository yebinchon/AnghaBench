
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int WITNESS_RANK_CORE ;
 int assert (int) ;
 int * extent_alloc_retained (int *,int *,int **,void*,size_t,size_t,size_t,int,int ,int*,int*) ;
 int * extent_alloc_wrapper_hard (int *,int *,int **,void*,size_t,size_t,size_t,int,int ,int*,int*) ;
 scalar_t__ extent_dumpable_get (int *) ;
 int extent_hooks_assure_initialized (int *,int **) ;
 scalar_t__ opt_retain ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

extent_t *
extent_alloc_wrapper(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 extent_hooks_assure_initialized(arena, r_extent_hooks);

 extent_t *extent = extent_alloc_retained(tsdn, arena, r_extent_hooks,
     new_addr, size, pad, alignment, slab, szind, zero, commit);
 if (extent == ((void*)0)) {
  if (opt_retain && new_addr != ((void*)0)) {






   return ((void*)0);
  }
  extent = extent_alloc_wrapper_hard(tsdn, arena, r_extent_hooks,
      new_addr, size, pad, alignment, slab, szind, zero, commit);
 }

 assert(extent == ((void*)0) || extent_dumpable_get(extent));
 return extent;
}
