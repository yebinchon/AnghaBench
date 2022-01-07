
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_6__ {int mtx; } ;
struct TYPE_5__ {int mtx; } ;
struct TYPE_7__ {int tcache_ql_mtx; TYPE_2__ decay_muzzy; TYPE_1__ decay_dirty; int extent_grow_mtx; int extents_retained; int extents_muzzy; int extents_dirty; int extent_avail_mtx; int base; int large_mtx; int * bins; } ;
typedef TYPE_3__ arena_t ;


 unsigned int NBINS ;
 int base_postfork_parent (int *,int ) ;
 int bin_postfork_parent (int *,int *) ;
 scalar_t__ config_stats ;
 int extents_postfork_parent (int *,int *) ;
 int malloc_mutex_postfork_parent (int *,int *) ;

void
arena_postfork_parent(tsdn_t *tsdn, arena_t *arena) {
 unsigned i;

 for (i = 0; i < NBINS; i++) {
  bin_postfork_parent(tsdn, &arena->bins[i]);
 }
 malloc_mutex_postfork_parent(tsdn, &arena->large_mtx);
 base_postfork_parent(tsdn, arena->base);
 malloc_mutex_postfork_parent(tsdn, &arena->extent_avail_mtx);
 extents_postfork_parent(tsdn, &arena->extents_dirty);
 extents_postfork_parent(tsdn, &arena->extents_muzzy);
 extents_postfork_parent(tsdn, &arena->extents_retained);
 malloc_mutex_postfork_parent(tsdn, &arena->extent_grow_mtx);
 malloc_mutex_postfork_parent(tsdn, &arena->decay_dirty.mtx);
 malloc_mutex_postfork_parent(tsdn, &arena->decay_muzzy.mtx);
 if (config_stats) {
  malloc_mutex_postfork_parent(tsdn, &arena->tcache_ql_mtx);
 }
}
