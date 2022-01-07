
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extents_t ;
typedef int extent_t ;
typedef int extent_list_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 size_t LG_PAGE ;
 int WITNESS_RANK_CORE ;
 int extent_list_append (int *,int *) ;
 size_t extent_size_get (int *) ;
 int * extents_evict (int *,int *,int **,int *,size_t) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

__attribute__((used)) static size_t
arena_stash_decayed(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extents_t *extents, size_t npages_limit,
 size_t npages_decay_max, extent_list_t *decay_extents) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);


 size_t nstashed = 0;
 extent_t *extent;
 while (nstashed < npages_decay_max &&
     (extent = extents_evict(tsdn, arena, r_extent_hooks, extents,
     npages_limit)) != ((void*)0)) {
  extent_list_append(decay_extents, extent);
  nstashed += extent_size_get(extent) >> LG_PAGE;
 }
 return nstashed;
}
