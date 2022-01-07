
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_timer_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int (* touch ) (TYPE_2__*) ;} ;


 int ISCAPI_TIMER_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*) ;

isc_result_t
isc_timer_touch(isc_timer_t *timer) {
 REQUIRE(ISCAPI_TIMER_VALID(timer));

 return (timer->methods->touch(timer));
}
