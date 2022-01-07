
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* isc_time_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_interval_t ;
typedef scalar_t__ isc_boolean_t ;
struct TYPE_6__ {scalar_t__ nscheduled; void* due; int wakeup; int heap; } ;
typedef TYPE_1__ isc__timermgr_t ;
struct TYPE_7__ {scalar_t__ type; void* expires; void* idle; int index; void* due; int interval; TYPE_1__* manager; } ;
typedef TYPE_2__ isc__timer_t ;


 int INSIST (int) ;
 scalar_t__ ISC_FALSE ;
 int ISC_LOGCATEGORY_GENERAL ;
 int ISC_LOGMODULE_TIMER ;
 int ISC_LOG_WARNING ;
 int ISC_MSGSET_TIMER ;
 int ISC_MSG_SCHEDULE ;
 int ISC_MSG_SIGNALSCHED ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ ISC_TF (int) ;
 int REQUIRE (int) ;
 int SIGNAL (int *) ;
 int UNUSED (scalar_t__) ;
 int XTRACE (int ) ;
 int XTRACETIMER (int ,TYPE_2__*,void*) ;
 int isc_heap_decreased (int ,int) ;
 int isc_heap_increased (int ,int) ;
 scalar_t__ isc_heap_insert (int ,TYPE_2__*) ;
 int isc_interval_set (int *,int,int ) ;
 int isc_lctx ;
 int isc_log_write (int ,int ,int ,int ,char*) ;
 int isc_msgcat ;
 int isc_msgcat_get (int ,int ,int ,char*) ;
 scalar_t__ isc_time_add (void**,int *,void**) ;
 scalar_t__ isc_time_compare (void**,void**) ;
 scalar_t__ isc_time_isepoch (void**) ;
 scalar_t__ isc_time_seconds (void**) ;
 scalar_t__ isc_timertype_inactive ;
 scalar_t__ isc_timertype_limited ;
 scalar_t__ isc_timertype_once ;

__attribute__((used)) static inline isc_result_t
schedule(isc__timer_t *timer, isc_time_t *now, isc_boolean_t signal_ok) {
 isc_result_t result;
 isc__timermgr_t *manager;
 isc_time_t due;
 int cmp;
 REQUIRE(timer->type != isc_timertype_inactive);


 UNUSED(signal_ok);


 manager = timer->manager;
 if (timer->type != isc_timertype_once) {
  result = isc_time_add(now, &timer->interval, &due);
  if (result != ISC_R_SUCCESS)
   return (result);
  if (timer->type == isc_timertype_limited &&
      isc_time_compare(&timer->expires, &due) < 0)
   due = timer->expires;
 } else {
  if (isc_time_isepoch(&timer->idle))
   due = timer->expires;
  else if (isc_time_isepoch(&timer->expires))
   due = timer->idle;
  else if (isc_time_compare(&timer->idle, &timer->expires) < 0)
   due = timer->idle;
  else
   due = timer->expires;
 }





 if (timer->index > 0) {



  cmp = isc_time_compare(&due, &timer->due);
  timer->due = due;
  switch (cmp) {
  case -1:
   isc_heap_increased(manager->heap, timer->index);
   break;
  case 1:
   isc_heap_decreased(manager->heap, timer->index);
   break;
  case 0:

   break;
  }
 } else {
  timer->due = due;
  result = isc_heap_insert(manager->heap, timer);
  if (result != ISC_R_SUCCESS) {
   INSIST(result == ISC_R_NOMEMORY);
   return (ISC_R_NOMEMORY);
  }
  manager->nscheduled++;
 }

 XTRACETIMER(isc_msgcat_get(isc_msgcat, ISC_MSGSET_TIMER,
       ISC_MSG_SCHEDULE, "schedule"), timer, due);
 if (timer->index == 1 &&
     isc_time_compare(&timer->due, &manager->due) < 0)
  manager->due = timer->due;


 return (ISC_R_SUCCESS);
}
