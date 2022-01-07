
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_20__ {int (* ev_action ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ isc_event_t ;
typedef scalar_t__ isc_boolean_t ;
struct TYPE_21__ {int tasks_running; int lock; void* mode; int ready_priority_tasks; int ready_tasks; int work_available; int paused; scalar_t__ pause_requested; int exclusive_granted; scalar_t__ exclusive_requested; } ;
typedef TYPE_2__ isc__taskmgr_t ;
typedef int isc__tasklist_t ;
struct TYPE_22__ {scalar_t__ state; scalar_t__ references; unsigned int quantum; int flags; int lock; int events; int now; } ;
typedef TYPE_3__ isc__task_t ;


 int BROADCAST (int *) ;
 unsigned int DEFAULT_TASKMGR_QUANTUM ;
 int DEQUEUE (int ,TYPE_1__*,int ) ;
 scalar_t__ EMPTY (int ) ;
 int ENQUEUE (int ,TYPE_3__*,int ) ;
 int FINISHED (TYPE_2__*) ;
 TYPE_1__* HEAD (int ) ;
 int INSIST (int) ;
 scalar_t__ ISC_FALSE ;
 int ISC_LIST_APPENDLIST (int ,int ,int ) ;
 int ISC_LIST_INIT (int ) ;
 int ISC_MSGSET_GENERAL ;
 int ISC_MSGSET_TASK ;
 int ISC_MSG_AWAKE ;
 int ISC_MSG_DONE ;
 int ISC_MSG_EMPTY ;
 int ISC_MSG_EXECUTE ;
 int ISC_MSG_QUANTUM ;
 int ISC_MSG_RUNNING ;
 int ISC_MSG_WAIT ;
 int ISC_MSG_WORKING ;
 scalar_t__ ISC_TRUE ;
 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int SIGNAL (int *) ;
 int TASK_F_PRIVILEGED ;
 scalar_t__ TASK_SHUTTINGDOWN (TYPE_3__*) ;
 int UNLOCK (int *) ;
 int VALID_MANAGER (TYPE_2__*) ;
 int VALID_TASK (TYPE_3__*) ;
 int WAIT (int *,int *) ;
 int XTHREADTRACE (int ) ;
 int XTRACE (int ) ;
 scalar_t__ empty_readyq (TYPE_2__*) ;
 int ev_link ;
 int isc_msgcat ;
 int isc_msgcat_get (int ,int ,int ,char*) ;
 int isc_stdtime_get (int *) ;
 void* isc_taskmgrmode_normal ;
 TYPE_3__* pop_readyq (TYPE_2__*) ;
 int push_readyq (TYPE_2__*,TYPE_3__*) ;
 int ready_link ;
 int ready_priority_link ;
 int stub1 (int *,TYPE_1__*) ;
 int task_finished (TYPE_3__*) ;
 scalar_t__ task_shutdown (TYPE_3__*) ;
 scalar_t__ task_state_done ;
 scalar_t__ task_state_idle ;
 scalar_t__ task_state_ready ;
 scalar_t__ task_state_running ;

__attribute__((used)) static void
dispatch(isc__taskmgr_t *manager) {
 isc__task_t *task;

 unsigned int total_dispatch_count = 0;
 isc__tasklist_t new_ready_tasks;
 isc__tasklist_t new_priority_tasks;


 REQUIRE(VALID_MANAGER(manager));
 ISC_LIST_INIT(new_ready_tasks);
 ISC_LIST_INIT(new_priority_tasks);

 LOCK(&manager->lock);

 while (!FINISHED(manager)) {
  if (total_dispatch_count >= DEFAULT_TASKMGR_QUANTUM ||
      empty_readyq(manager))
   break;

  XTHREADTRACE(isc_msgcat_get(isc_msgcat, ISC_MSGSET_TASK,
         ISC_MSG_WORKING, "working"));

  task = pop_readyq(manager);
  if (task != ((void*)0)) {
   unsigned int dispatch_count = 0;
   isc_boolean_t done = ISC_FALSE;
   isc_boolean_t requeue = ISC_FALSE;
   isc_boolean_t finished = ISC_FALSE;
   isc_event_t *event;

   INSIST(VALID_TASK(task));






   manager->tasks_running++;
   UNLOCK(&manager->lock);

   LOCK(&task->lock);
   INSIST(task->state == task_state_ready);
   task->state = task_state_running;
   XTRACE(isc_msgcat_get(isc_msgcat, ISC_MSGSET_GENERAL,
           ISC_MSG_RUNNING, "running"));
   isc_stdtime_get(&task->now);
   do {
    if (!EMPTY(task->events)) {
     event = HEAD(task->events);
     DEQUEUE(task->events, event, ev_link);




     XTRACE(isc_msgcat_get(isc_msgcat,
           ISC_MSGSET_TASK,
           ISC_MSG_EXECUTE,
           "execute action"));
     if (event->ev_action != ((void*)0)) {
      UNLOCK(&task->lock);
      (event->ev_action)(
       (isc_task_t *)task,
       event);
      LOCK(&task->lock);
     }
     dispatch_count++;

     total_dispatch_count++;

    }

    if (task->references == 0 &&
        EMPTY(task->events) &&
        !TASK_SHUTTINGDOWN(task)) {
     isc_boolean_t was_idle;
     was_idle = task_shutdown(task);
     INSIST(!was_idle);
    }

    if (EMPTY(task->events)) {




     XTRACE(isc_msgcat_get(isc_msgcat,
             ISC_MSGSET_TASK,
             ISC_MSG_EMPTY,
             "empty"));
     if (task->references == 0 &&
         TASK_SHUTTINGDOWN(task)) {



      XTRACE(isc_msgcat_get(
              isc_msgcat,
              ISC_MSGSET_TASK,
              ISC_MSG_DONE,
              "done"));
      finished = ISC_TRUE;
      task->state = task_state_done;
     } else
      task->state = task_state_idle;
     done = ISC_TRUE;
    } else if (dispatch_count >= task->quantum) {
     XTRACE(isc_msgcat_get(isc_msgcat,
             ISC_MSGSET_TASK,
             ISC_MSG_QUANTUM,
             "quantum"));
     task->state = task_state_ready;
     requeue = ISC_TRUE;
     done = ISC_TRUE;
    }
   } while (!done);
   UNLOCK(&task->lock);

   if (finished)
    task_finished(task);

   LOCK(&manager->lock);
   manager->tasks_running--;
   if (requeue) {
    ENQUEUE(new_ready_tasks, task, ready_link);
    if ((task->flags & TASK_F_PRIVILEGED) != 0)
     ENQUEUE(new_priority_tasks, task,
      ready_priority_link);

   }
  }
 }


 ISC_LIST_APPENDLIST(manager->ready_tasks, new_ready_tasks, ready_link);
 ISC_LIST_APPENDLIST(manager->ready_priority_tasks, new_priority_tasks,
       ready_priority_link);
 if (empty_readyq(manager))
  manager->mode = isc_taskmgrmode_normal;


 UNLOCK(&manager->lock);
}
