
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
struct TYPE_3__ {int prof_accum; } ;
typedef TYPE_1__ arena_t ;


 size_t LARGE_MINCLASS ;
 size_t SMALL_MAXCLASS ;
 int assert (int) ;
 int cassert (int ) ;
 int config_prof ;
 TYPE_1__* extent_arena_get (int *) ;
 int extent_szind_set (int *,int ) ;
 int extents_rtree ;
 size_t isalloc (int *,void const*) ;
 int prof_accum_cancel (int *,int *,size_t) ;
 int * rtree_extent_read (int *,int *,int *,uintptr_t,int) ;
 int rtree_szind_slab_update (int *,int *,int *,uintptr_t,int ,int) ;
 int sz_size2index (size_t) ;
 int * tsdn_rtree_ctx (int *,int *) ;

void
arena_prof_promote(tsdn_t *tsdn, const void *ptr, size_t usize) {
 cassert(config_prof);
 assert(ptr != ((void*)0));
 assert(isalloc(tsdn, ptr) == LARGE_MINCLASS);
 assert(usize <= SMALL_MAXCLASS);

 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);

 extent_t *extent = rtree_extent_read(tsdn, &extents_rtree, rtree_ctx,
     (uintptr_t)ptr, 1);
 arena_t *arena = extent_arena_get(extent);

 szind_t szind = sz_size2index(usize);
 extent_szind_set(extent, szind);
 rtree_szind_slab_update(tsdn, &extents_rtree, rtree_ctx, (uintptr_t)ptr,
     szind, 0);

 prof_accum_cancel(tsdn, &arena->prof_accum, usize);

 assert(isalloc(tsdn, ptr) == usize);
}
