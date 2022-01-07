
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int ssize_t ;
typedef int extents_t ;
typedef int arena_t ;
struct TYPE_5__ {int mtx; } ;
typedef TYPE_1__ arena_decay_t ;


 int arena_decay_ms_valid (int ) ;
 int arena_decay_reinit (TYPE_1__*,int ) ;
 int arena_maybe_decay (int *,int *,TYPE_1__*,int *,int) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

__attribute__((used)) static bool
arena_decay_ms_set(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    extents_t *extents, ssize_t decay_ms) {
 if (!arena_decay_ms_valid(decay_ms)) {
  return 1;
 }

 malloc_mutex_lock(tsdn, &decay->mtx);
 arena_decay_reinit(decay, decay_ms);
 arena_maybe_decay(tsdn, arena, decay, extents, 0);
 malloc_mutex_unlock(tsdn, &decay->mtx);

 return 0;
}
