
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int tsd_t ;
struct TYPE_8__ {int (* purge_lazy ) (TYPE_1__*,void*,size_t,int ,size_t,unsigned int) ;int (* purge_forced ) (TYPE_1__*,void*,size_t,int ,size_t,unsigned int) ;int (* decommit ) (TYPE_1__*,void*,size_t,int ,size_t,unsigned int) ;int (* dalloc ) (TYPE_1__*,void*,size_t,int,unsigned int) ;} ;
typedef TYPE_1__ extent_hooks_t ;


 uintptr_t HUGEPAGE_MASK ;
 int assert (int) ;
 int extent_dalloc_mmap (void*,size_t) ;
 TYPE_1__ extent_hooks_default ;
 scalar_t__ metadata_thp_madvise () ;
 int not_reached () ;
 int pages_decommit (void*,size_t) ;
 int pages_nohuge (void*,size_t) ;
 int pages_purge_forced (void*,size_t) ;
 int pages_purge_lazy (void*,size_t) ;
 int post_reentrancy (int *) ;
 int pre_reentrancy (int *,int *) ;
 int stub1 (TYPE_1__*,void*,size_t,int,unsigned int) ;
 int stub2 (TYPE_1__*,void*,size_t,int ,size_t,unsigned int) ;
 int stub3 (TYPE_1__*,void*,size_t,int ,size_t,unsigned int) ;
 int stub4 (TYPE_1__*,void*,size_t,int ,size_t,unsigned int) ;
 int * tsd_fetch () ;
 scalar_t__ tsdn_null (int *) ;
 int * tsdn_tsd (int *) ;

__attribute__((used)) static void
base_unmap(tsdn_t *tsdn, extent_hooks_t *extent_hooks, unsigned ind, void *addr,
    size_t size) {
 if (extent_hooks == &extent_hooks_default) {
  if (!extent_dalloc_mmap(addr, size)) {
   goto label_done;
  }
  if (!pages_decommit(addr, size)) {
   goto label_done;
  }
  if (!pages_purge_forced(addr, size)) {
   goto label_done;
  }
  if (!pages_purge_lazy(addr, size)) {
   goto label_done;
  }

  not_reached();
 } else {
  tsd_t *tsd = tsdn_null(tsdn) ? tsd_fetch() : tsdn_tsd(tsdn);
  pre_reentrancy(tsd, ((void*)0));
  if (extent_hooks->dalloc != ((void*)0) &&
      !extent_hooks->dalloc(extent_hooks, addr, size, 1,
      ind)) {
   goto label_post_reentrancy;
  }
  if (extent_hooks->decommit != ((void*)0) &&
      !extent_hooks->decommit(extent_hooks, addr, size, 0, size,
      ind)) {
   goto label_post_reentrancy;
  }
  if (extent_hooks->purge_forced != ((void*)0) &&
      !extent_hooks->purge_forced(extent_hooks, addr, size, 0,
      size, ind)) {
   goto label_post_reentrancy;
  }
  if (extent_hooks->purge_lazy != ((void*)0) &&
      !extent_hooks->purge_lazy(extent_hooks, addr, size, 0, size,
      ind)) {
   goto label_post_reentrancy;
  }

 label_post_reentrancy:
  post_reentrancy(tsd);
 }
label_done:
 if (metadata_thp_madvise()) {

  assert(((uintptr_t)addr & HUGEPAGE_MASK) == 0 &&
      (size & HUGEPAGE_MASK) == 0);
  pages_nohuge(addr, size);
 }
}
