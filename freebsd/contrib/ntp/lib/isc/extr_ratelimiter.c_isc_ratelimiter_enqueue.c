
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int isc_task_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_7__ {scalar_t__ state; int lock; int interval; int timer; int pending; } ;
typedef TYPE_1__ isc_ratelimiter_t ;
struct TYPE_8__ {int * ev_sender; } ;
typedef TYPE_2__ isc_event_t ;


 int INSIST (int) ;
 int ISC_FALSE ;
 int ISC_LIST_APPEND (int ,TYPE_2__*,int ) ;
 scalar_t__ ISC_R_SHUTTINGDOWN ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int ev_link ;
 scalar_t__ isc_ratelimiter_idle ;
 scalar_t__ isc_ratelimiter_ratelimited ;
 scalar_t__ isc_ratelimiter_shuttingdown ;
 scalar_t__ isc_ratelimiter_stalled ;
 int isc_task_send (int *,TYPE_2__**) ;
 scalar_t__ isc_timer_reset (int ,int ,int *,int *,int ) ;
 int isc_timertype_ticker ;

isc_result_t
isc_ratelimiter_enqueue(isc_ratelimiter_t *rl, isc_task_t *task,
   isc_event_t **eventp)
{
 isc_result_t result = ISC_R_SUCCESS;
 isc_event_t *ev;

 REQUIRE(eventp != ((void*)0) && *eventp != ((void*)0));
 REQUIRE(task != ((void*)0));
 ev = *eventp;
 REQUIRE(ev->ev_sender == ((void*)0));

 LOCK(&rl->lock);
        if (rl->state == isc_ratelimiter_ratelimited ||
     rl->state == isc_ratelimiter_stalled) {
  isc_event_t *ev = *eventp;
  ev->ev_sender = task;
                ISC_LIST_APPEND(rl->pending, ev, ev_link);
  *eventp = ((void*)0);
        } else if (rl->state == isc_ratelimiter_idle) {
  result = isc_timer_reset(rl->timer, isc_timertype_ticker, ((void*)0),
      &rl->interval, ISC_FALSE);
  if (result == ISC_R_SUCCESS) {
   ev->ev_sender = task;
   rl->state = isc_ratelimiter_ratelimited;
  }
 } else {
  INSIST(rl->state == isc_ratelimiter_shuttingdown);
  result = ISC_R_SHUTTINGDOWN;
 }
 UNLOCK(&rl->lock);
 if (*eventp != ((void*)0) && result == ISC_R_SUCCESS)
  isc_task_send(task, eventp);
 return (result);
}
