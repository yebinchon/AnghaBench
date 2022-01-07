
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_timer_t ;
struct TYPE_8__ {int (* attach ) (TYPE_2__*,TYPE_2__**) ;} ;


 int ENSURE (int) ;
 int ISCAPI_TIMER_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__*,TYPE_2__**) ;

void
isc_timer_attach(isc_timer_t *timer, isc_timer_t **timerp) {
 REQUIRE(ISCAPI_TIMER_VALID(timer));
 REQUIRE(timerp != ((void*)0) && *timerp == ((void*)0));

 timer->methods->attach(timer, timerp);

 ENSURE(*timerp == timer);
}
