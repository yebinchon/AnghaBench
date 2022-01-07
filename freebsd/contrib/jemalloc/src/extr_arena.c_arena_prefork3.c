
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int extents_retained; int extents_muzzy; int extents_dirty; } ;
typedef TYPE_1__ arena_t ;


 int extents_prefork (int *,int *) ;

void
arena_prefork3(tsdn_t *tsdn, arena_t *arena) {
 extents_prefork(tsdn, &arena->extents_dirty);
 extents_prefork(tsdn, &arena->extents_muzzy);
 extents_prefork(tsdn, &arena->extents_retained);
}
