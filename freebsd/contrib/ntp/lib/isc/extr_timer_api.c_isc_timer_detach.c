
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_timer_t ;
struct TYPE_6__ {int (* detach ) (TYPE_2__**) ;} ;


 int ENSURE (int ) ;
 scalar_t__ ISCAPI_TIMER_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__**) ;

void
isc_timer_detach(isc_timer_t **timerp) {
 REQUIRE(timerp != ((void*)0) && ISCAPI_TIMER_VALID(*timerp));

 (*timerp)->methods->detach(timerp);

 ENSURE(*timerp == ((void*)0));
}
