
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_6__ {int slab_size; } ;
typedef TYPE_1__ bin_info_t ;
struct TYPE_7__ {int stats; } ;
typedef TYPE_2__ arena_t ;


 int PAGE ;
 int WITNESS_RANK_CORE ;
 int arena_stats_mapped_add (int *,int *,int ) ;
 scalar_t__ config_stats ;
 int * extent_alloc_wrapper (int *,TYPE_2__*,int **,int *,int ,int ,int ,int,int ,int*,int*) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

__attribute__((used)) static extent_t *
arena_slab_alloc_hard(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, const bin_info_t *bin_info,
    szind_t szind) {
 extent_t *slab;
 bool zero, commit;

 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 zero = 0;
 commit = 1;
 slab = extent_alloc_wrapper(tsdn, arena, r_extent_hooks, ((void*)0),
     bin_info->slab_size, 0, PAGE, 1, szind, &zero, &commit);

 if (config_stats && slab != ((void*)0)) {
  arena_stats_mapped_add(tsdn, &arena->stats,
      bin_info->slab_size);
 }

 return slab;
}
