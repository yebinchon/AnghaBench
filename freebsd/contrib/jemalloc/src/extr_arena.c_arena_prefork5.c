
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ arena_t ;


 int base_prefork (int *,int ) ;

void
arena_prefork5(tsdn_t *tsdn, arena_t *arena) {
 base_prefork(tsdn, arena->base);
}
