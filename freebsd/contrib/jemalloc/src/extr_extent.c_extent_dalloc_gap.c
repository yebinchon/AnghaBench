
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_5__ {int extents_retained; } ;
typedef TYPE_1__ arena_t ;


 int * EXTENT_HOOKS_INITIALIZER ;
 int WITNESS_RANK_CORE ;
 int extent_dalloc_wrapper (int *,TYPE_1__*,int **,int *) ;
 scalar_t__ extent_register (int *,int *) ;
 int extents_leak (int *,TYPE_1__*,int **,int *,int *,int) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

void
extent_dalloc_gap(tsdn_t *tsdn, arena_t *arena, extent_t *extent) {
 extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;

 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 if (extent_register(tsdn, extent)) {
  extents_leak(tsdn, arena, &extent_hooks,
      &arena->extents_retained, extent, 0);
  return;
 }
 extent_dalloc_wrapper(tsdn, arena, &extent_hooks, extent);
}
