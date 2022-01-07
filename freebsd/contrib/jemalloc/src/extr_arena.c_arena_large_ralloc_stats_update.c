
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int arena_t ;


 int arena_large_dalloc_stats_update (int *,int *,size_t) ;
 int arena_large_malloc_stats_update (int *,int *,size_t) ;

__attribute__((used)) static void
arena_large_ralloc_stats_update(tsdn_t *tsdn, arena_t *arena, size_t oldusize,
    size_t usize) {
 arena_large_dalloc_stats_update(tsdn, arena, oldusize);
 arena_large_malloc_stats_update(tsdn, arena, usize);
}
