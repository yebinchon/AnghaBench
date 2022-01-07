
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsd_t ;
typedef int extent_hooks_t ;
struct TYPE_6__ {int mtx; } ;
typedef TYPE_1__ background_thread_info_t ;
struct TYPE_7__ {int base; } ;
typedef TYPE_2__ arena_t ;


 TYPE_1__* arena_background_thread_info_get (TYPE_2__*) ;
 int * base_extent_hooks_set (int ,int *) ;
 scalar_t__ have_background_thread ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int tsd_tsdn (int *) ;

extent_hooks_t *
extent_hooks_set(tsd_t *tsd, arena_t *arena, extent_hooks_t *extent_hooks) {
 background_thread_info_t *info;
 if (have_background_thread) {
  info = arena_background_thread_info_get(arena);
  malloc_mutex_lock(tsd_tsdn(tsd), &info->mtx);
 }
 extent_hooks_t *ret = base_extent_hooks_set(arena->base, extent_hooks);
 if (have_background_thread) {
  malloc_mutex_unlock(tsd_tsdn(tsd), &info->mtx);
 }

 return ret;
}
