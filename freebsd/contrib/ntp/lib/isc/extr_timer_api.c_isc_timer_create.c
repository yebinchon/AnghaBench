
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_timertype_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_timermgr_t ;
typedef int isc_timer_t ;
typedef int isc_time_t ;
typedef int isc_taskaction_t ;
typedef int isc_task_t ;
typedef int isc_result_t ;
typedef int isc_interval_t ;
struct TYPE_6__ {int (* timercreate ) (TYPE_2__*,int ,int *,int *,int *,int ,void const*,int **) ;} ;


 int ISCAPI_TIMERMGR_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int ,int *,int *,int *,int ,void const*,int **) ;

isc_result_t
isc_timer_create(isc_timermgr_t *manager, isc_timertype_t type,
   isc_time_t *expires, isc_interval_t *interval,
   isc_task_t *task, isc_taskaction_t action, const void *arg,
   isc_timer_t **timerp)
{
 REQUIRE(ISCAPI_TIMERMGR_VALID(manager));

 return (manager->methods->timercreate(manager, type, expires,
           interval, task, action, arg,
           timerp));
}
