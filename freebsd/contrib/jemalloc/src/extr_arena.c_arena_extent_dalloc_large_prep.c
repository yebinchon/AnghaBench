
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_5__ {int stats; } ;
typedef TYPE_1__ arena_t ;


 int LG_PAGE ;
 int arena_large_dalloc_stats_update (int *,TYPE_1__*,int ) ;
 int arena_nactive_sub (TYPE_1__*,int) ;
 int arena_stats_lock (int *,int *) ;
 int arena_stats_unlock (int *,int *) ;
 scalar_t__ config_stats ;
 int extent_size_get (int *) ;
 int extent_usize_get (int *) ;

void
arena_extent_dalloc_large_prep(tsdn_t *tsdn, arena_t *arena, extent_t *extent) {
 if (config_stats) {
  arena_stats_lock(tsdn, &arena->stats);
  arena_large_dalloc_stats_update(tsdn, arena,
      extent_usize_get(extent));
  arena_stats_unlock(tsdn, &arena->stats);
 }
 arena_nactive_sub(arena, extent_size_get(extent) >> LG_PAGE);
}
