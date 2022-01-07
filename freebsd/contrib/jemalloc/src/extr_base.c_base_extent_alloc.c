
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_8__ {scalar_t__ allocated; scalar_t__ resident; int mapped; int n_thp; int auto_thp_switched; TYPE_2__* blocks; int mtx; int extent_sn_next; int pind_last; } ;
typedef TYPE_1__ base_t ;
struct TYPE_9__ {int extent; scalar_t__ size; struct TYPE_9__* next; } ;
typedef TYPE_2__ base_block_t ;


 int HUGEPAGE_CEILING (int) ;
 int LG_HUGEPAGE ;
 scalar_t__ PAGE_CEILING (int) ;
 int assert (int) ;
 TYPE_2__* base_block_alloc (int *,TYPE_1__*,int *,int ,int *,int *,size_t,size_t) ;
 int * base_extent_hooks_get (TYPE_1__*) ;
 int base_ind_get (TYPE_1__*) ;
 scalar_t__ config_stats ;
 int malloc_mutex_assert_owner (int *,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 scalar_t__ metadata_thp_auto ;
 scalar_t__ metadata_thp_madvise () ;
 scalar_t__ opt_metadata_thp ;

__attribute__((used)) static extent_t *
base_extent_alloc(tsdn_t *tsdn, base_t *base, size_t size, size_t alignment) {
 malloc_mutex_assert_owner(tsdn, &base->mtx);

 extent_hooks_t *extent_hooks = base_extent_hooks_get(base);




 malloc_mutex_unlock(tsdn, &base->mtx);
 base_block_t *block = base_block_alloc(tsdn, base, extent_hooks,
     base_ind_get(base), &base->pind_last, &base->extent_sn_next, size,
     alignment);
 malloc_mutex_lock(tsdn, &base->mtx);
 if (block == ((void*)0)) {
  return ((void*)0);
 }
 block->next = base->blocks;
 base->blocks = block;
 if (config_stats) {
  base->allocated += sizeof(base_block_t);
  base->resident += PAGE_CEILING(sizeof(base_block_t));
  base->mapped += block->size;
  if (metadata_thp_madvise() &&
      !(opt_metadata_thp == metadata_thp_auto
        && !base->auto_thp_switched)) {
   assert(base->n_thp > 0);
   base->n_thp += HUGEPAGE_CEILING(sizeof(base_block_t)) >>
       LG_HUGEPAGE;
  }
  assert(base->allocated <= base->resident);
  assert(base->resident <= base->mapped);
  assert(base->n_thp << LG_HUGEPAGE <= base->mapped);
 }
 return &block->extent;
}
