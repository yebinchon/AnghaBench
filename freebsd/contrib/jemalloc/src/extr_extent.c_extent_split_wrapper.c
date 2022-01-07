
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int * extent_split_impl (int *,int *,int **,int *,size_t,int ,int,size_t,int ,int,int) ;

extent_t *
extent_split_wrapper(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent, size_t size_a,
    szind_t szind_a, bool slab_a, size_t size_b, szind_t szind_b, bool slab_b) {
 return extent_split_impl(tsdn, arena, r_extent_hooks, extent, size_a,
     szind_a, slab_a, size_b, szind_b, slab_b, 0);
}
