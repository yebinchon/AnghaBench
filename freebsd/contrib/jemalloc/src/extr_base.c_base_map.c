
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int tsd_t ;
struct TYPE_5__ {void* (* alloc ) (TYPE_1__*,int *,size_t,size_t,int*,int*,unsigned int) ;} ;
typedef TYPE_1__ extent_hooks_t ;


 size_t HUGEPAGE ;
 size_t HUGEPAGE_CEILING (size_t) ;
 int assert (int) ;
 void* extent_alloc_mmap (int *,size_t,size_t,int*,int*) ;
 TYPE_1__ extent_hooks_default ;
 int post_reentrancy (int *) ;
 int pre_reentrancy (int *,int *) ;
 void* stub1 (TYPE_1__*,int *,size_t,size_t,int*,int*,unsigned int) ;
 int * tsd_fetch () ;
 scalar_t__ tsdn_null (int *) ;
 int * tsdn_tsd (int *) ;

__attribute__((used)) static void *
base_map(tsdn_t *tsdn, extent_hooks_t *extent_hooks, unsigned ind, size_t size) {
 void *addr;
 bool zero = 1;
 bool commit = 1;


 assert(size == HUGEPAGE_CEILING(size));
 size_t alignment = HUGEPAGE;
 if (extent_hooks == &extent_hooks_default) {
  addr = extent_alloc_mmap(((void*)0), size, alignment, &zero, &commit);
 } else {

  tsd_t *tsd = tsdn_null(tsdn) ? tsd_fetch() : tsdn_tsd(tsdn);
  pre_reentrancy(tsd, ((void*)0));
  addr = extent_hooks->alloc(extent_hooks, ((void*)0), size, alignment,
      &zero, &commit, ind);
  post_reentrancy(tsd);
 }

 return addr;
}
