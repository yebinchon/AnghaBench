
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int arena_t ;


 int arena_decay_tick (int *,int *) ;
 int * extent_arena_get (int *) ;
 int large_dalloc_finish_impl (int *,int *,int *) ;
 int large_dalloc_prep_impl (int *,int *,int *,int) ;

void
large_dalloc(tsdn_t *tsdn, extent_t *extent) {
 arena_t *arena = extent_arena_get(extent);
 large_dalloc_prep_impl(tsdn, arena, extent, 0);
 large_dalloc_finish_impl(tsdn, arena, extent);
 arena_decay_tick(tsdn, arena);
}
