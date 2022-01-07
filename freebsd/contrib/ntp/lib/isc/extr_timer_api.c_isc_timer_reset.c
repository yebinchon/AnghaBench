
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_timertype_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_timer_t ;
typedef int isc_time_t ;
typedef int isc_result_t ;
typedef int isc_interval_t ;
typedef int isc_boolean_t ;
struct TYPE_6__ {int (* reset ) (TYPE_2__*,int ,int *,int *,int ) ;} ;


 int ISCAPI_TIMER_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int ,int *,int *,int ) ;

isc_result_t
isc_timer_reset(isc_timer_t *timer, isc_timertype_t type,
  isc_time_t *expires, isc_interval_t *interval,
  isc_boolean_t purge)
{
 REQUIRE(ISCAPI_TIMER_VALID(timer));

 return (timer->methods->reset(timer, type, expires, interval, purge));
}
