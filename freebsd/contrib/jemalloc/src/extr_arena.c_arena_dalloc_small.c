
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int arena_t ;


 int arena_dalloc_bin (int *,int *,int *,void*) ;
 int arena_decay_tick (int *,int *) ;
 int * extent_arena_get (int *) ;
 int * iealloc (int *,void*) ;

void
arena_dalloc_small(tsdn_t *tsdn, void *ptr) {
 extent_t *extent = iealloc(tsdn, ptr);
 arena_t *arena = extent_arena_get(extent);

 arena_dalloc_bin(tsdn, arena, extent, ptr);
 arena_decay_tick(tsdn, arena);
}
