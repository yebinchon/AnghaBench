
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ev_type; } ;
typedef TYPE_1__ isc_event_t ;
typedef int isc_boolean_t ;
struct TYPE_7__ {scalar_t__ state; int events; } ;
typedef TYPE_2__ isc__task_t ;


 int EMPTY (int ) ;
 int ENQUEUE (int ,TYPE_1__*,int ) ;
 int INSIST (int) ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int) ;
 int XTRACE (char*) ;
 int ev_link ;
 scalar_t__ task_state_done ;
 scalar_t__ task_state_idle ;
 scalar_t__ task_state_ready ;
 scalar_t__ task_state_running ;

__attribute__((used)) static inline isc_boolean_t
task_send(isc__task_t *task, isc_event_t **eventp) {
 isc_boolean_t was_idle = ISC_FALSE;
 isc_event_t *event;





 REQUIRE(eventp != ((void*)0));
 event = *eventp;
 REQUIRE(event != ((void*)0));
 REQUIRE(event->ev_type > 0);
 REQUIRE(task->state != task_state_done);

 XTRACE("task_send");

 if (task->state == task_state_idle) {
  was_idle = ISC_TRUE;
  INSIST(EMPTY(task->events));
  task->state = task_state_ready;
 }
 INSIST(task->state == task_state_ready ||
        task->state == task_state_running);
 ENQUEUE(task->events, event, ev_link);
 *eventp = ((void*)0);

 return (was_idle);
}
