
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {int extents_muzzy; int decay_muzzy; } ;
typedef TYPE_1__ arena_t ;


 int arena_decay_impl (int *,TYPE_1__*,int *,int *,int,int) ;

__attribute__((used)) static bool
arena_decay_muzzy(tsdn_t *tsdn, arena_t *arena, bool is_background_thread,
    bool all) {
 return arena_decay_impl(tsdn, arena, &arena->decay_muzzy,
     &arena->extents_muzzy, is_background_thread, all);
}
