
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int ssize_t ;
struct TYPE_4__ {int extents_muzzy; int decay_muzzy; } ;
typedef TYPE_1__ arena_t ;


 int arena_decay_ms_set (int *,TYPE_1__*,int *,int *,int ) ;

bool
arena_muzzy_decay_ms_set(tsdn_t *tsdn, arena_t *arena,
    ssize_t decay_ms) {
 return arena_decay_ms_set(tsdn, arena, &arena->decay_muzzy,
     &arena->extents_muzzy, decay_ms);
}
