
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_leaf_elm_t ;
typedef int rtree_ctx_t ;
typedef scalar_t__ lock_result_t ;
typedef int extent_t ;


 scalar_t__ extent_rtree_leaf_elm_try_lock (int *,int *,int **) ;
 int extents_rtree ;
 scalar_t__ lock_result_failure ;
 int * rtree_leaf_elm_lookup (int *,int *,int *,uintptr_t,int,int) ;

__attribute__((used)) static extent_t *
extent_lock_from_addr(tsdn_t *tsdn, rtree_ctx_t *rtree_ctx, void *addr) {
 extent_t *ret = ((void*)0);
 rtree_leaf_elm_t *elm = rtree_leaf_elm_lookup(tsdn, &extents_rtree,
     rtree_ctx, (uintptr_t)addr, 0, 0);
 if (elm == ((void*)0)) {
  return ((void*)0);
 }
 lock_result_t lock_result;
 do {
  lock_result = extent_rtree_leaf_elm_try_lock(tsdn, elm, &ret);
 } while (lock_result == lock_result_failure);
 return ret;
}
