
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_5__ {int curslabs; int nslabs; } ;
struct TYPE_6__ {TYPE_1__ stats; int lock; } ;
typedef TYPE_2__ bin_t ;
typedef int bin_info_t ;
typedef int arena_t ;


 int * arena_bin_slabs_nonfull_tryget (TYPE_2__*) ;
 int * arena_slab_alloc (int *,int *,size_t,int const*) ;
 int * bin_infos ;
 scalar_t__ config_stats ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

__attribute__((used)) static extent_t *
arena_bin_nonfull_slab_get(tsdn_t *tsdn, arena_t *arena, bin_t *bin,
    szind_t binind) {
 extent_t *slab;
 const bin_info_t *bin_info;


 slab = arena_bin_slabs_nonfull_tryget(bin);
 if (slab != ((void*)0)) {
  return slab;
 }


 bin_info = &bin_infos[binind];


 malloc_mutex_unlock(tsdn, &bin->lock);

 slab = arena_slab_alloc(tsdn, arena, binind, bin_info);

 malloc_mutex_lock(tsdn, &bin->lock);
 if (slab != ((void*)0)) {
  if (config_stats) {
   bin->stats.nslabs++;
   bin->stats.curslabs++;
  }
  return slab;
 }






 slab = arena_bin_slabs_nonfull_tryget(bin);
 if (slab != ((void*)0)) {
  return slab;
 }

 return ((void*)0);
}
