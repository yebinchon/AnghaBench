
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_event_t ;
typedef int isc_boolean_t ;
struct TYPE_4__ {scalar_t__ state; int events; int on_shutdown; int flags; } ;
typedef TYPE_1__ isc__task_t ;


 int DEQUEUE (int ,int *,int ) ;
 int EMPTY (int ) ;
 int ENQUEUE (int ,int *,int ) ;
 int INSIST (int) ;
 int ISC_FALSE ;
 int ISC_MSGSET_GENERAL ;
 int ISC_MSG_SHUTTINGDOWN ;
 int ISC_TRUE ;
 int * PREV (int *,int ) ;
 int * TAIL (int ) ;
 int TASK_F_SHUTTINGDOWN ;
 int TASK_SHUTTINGDOWN (TYPE_1__*) ;
 int XTRACE (char*) ;
 int ev_link ;
 int isc_msgcat ;
 char* isc_msgcat_get (int ,int ,int ,char*) ;
 scalar_t__ task_state_idle ;
 scalar_t__ task_state_ready ;
 scalar_t__ task_state_running ;

__attribute__((used)) static inline isc_boolean_t
task_shutdown(isc__task_t *task) {
 isc_boolean_t was_idle = ISC_FALSE;
 isc_event_t *event, *prev;





 XTRACE("task_shutdown");

 if (! TASK_SHUTTINGDOWN(task)) {
  XTRACE(isc_msgcat_get(isc_msgcat, ISC_MSGSET_GENERAL,
          ISC_MSG_SHUTTINGDOWN, "shutting down"));
  task->flags |= TASK_F_SHUTTINGDOWN;
  if (task->state == task_state_idle) {
   INSIST(EMPTY(task->events));
   task->state = task_state_ready;
   was_idle = ISC_TRUE;
  }
  INSIST(task->state == task_state_ready ||
         task->state == task_state_running);




  for (event = TAIL(task->on_shutdown);
       event != ((void*)0);
       event = prev) {
   prev = PREV(event, ev_link);
   DEQUEUE(task->on_shutdown, event, ev_link);
   ENQUEUE(task->events, event, ev_link);
  }
 }

 return (was_idle);
}
