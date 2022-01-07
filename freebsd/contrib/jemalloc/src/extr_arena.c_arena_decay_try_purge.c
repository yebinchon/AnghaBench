
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extents_t ;
typedef int arena_t ;
typedef int arena_decay_t ;


 int arena_decay_to_limit (int *,int *,int *,int *,int,size_t,size_t,int) ;

__attribute__((used)) static void
arena_decay_try_purge(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    extents_t *extents, size_t current_npages, size_t npages_limit,
    bool is_background_thread) {
 if (current_npages > npages_limit) {
  arena_decay_to_limit(tsdn, arena, decay, extents, 0,
      npages_limit, current_npages - npages_limit,
      is_background_thread);
 }
}
