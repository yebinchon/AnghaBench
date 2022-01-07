
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ isc_uint32_t ;
typedef int isc_task_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_8__ {scalar_t__ pertic; int lock; int state; int timer; int pending; } ;
typedef TYPE_1__ isc_ratelimiter_t ;
struct TYPE_9__ {int * ev_sender; scalar_t__ ev_arg; } ;
typedef TYPE_2__ isc_event_t ;


 int INSIST (int ) ;
 int ISC_FALSE ;
 TYPE_2__* ISC_LIST_HEAD (int ) ;
 int ISC_LIST_UNLINK (int ,TYPE_2__*,int ) ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int RUNTIME_CHECK (int) ;
 int UNLOCK (int *) ;
 int UNUSED (int *) ;
 int ev_link ;
 int isc_event_free (TYPE_2__**) ;
 int isc_ratelimiter_idle ;
 int isc_task_send (int *,TYPE_2__**) ;
 scalar_t__ isc_timer_reset (int ,int ,int *,int *,int ) ;
 int isc_timertype_inactive ;

__attribute__((used)) static void
ratelimiter_tick(isc_task_t *task, isc_event_t *event) {
 isc_result_t result = ISC_R_SUCCESS;
 isc_ratelimiter_t *rl = (isc_ratelimiter_t *)event->ev_arg;
 isc_event_t *p;
 isc_uint32_t pertic;

 UNUSED(task);

 isc_event_free(&event);

 pertic = rl->pertic;
        while (pertic != 0) {
  pertic--;
  LOCK(&rl->lock);
  p = ISC_LIST_HEAD(rl->pending);
  if (p != ((void*)0)) {



   ISC_LIST_UNLINK(rl->pending, p, ev_link);
  } else {




   result = isc_timer_reset(rl->timer,
       isc_timertype_inactive,
       ((void*)0), ((void*)0), ISC_FALSE);
   RUNTIME_CHECK(result == ISC_R_SUCCESS);
   rl->state = isc_ratelimiter_idle;
   pertic = 0;
  }
  UNLOCK(&rl->lock);
  if (p != ((void*)0)) {
   isc_task_t *evtask = p->ev_sender;
   isc_task_send(evtask, &p);
  }
  INSIST(p == ((void*)0));
 }
}
