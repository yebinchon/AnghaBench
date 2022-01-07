
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int * EXTENT_HOOKS_INITIALIZER ;
 int arena_extents_dirty_dalloc (int *,int *,int **,int *) ;

__attribute__((used)) static void
large_dalloc_finish_impl(tsdn_t *tsdn, arena_t *arena, extent_t *extent) {
 extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;
 arena_extents_dirty_dalloc(tsdn, arena, &extent_hooks, extent);
}
