
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_8__ {int * ev_sender; int ev_attributes; } ;
struct TYPE_7__ {int lock; int * task; TYPE_2__ shutdownevent; int timer; int pending; int state; } ;
typedef TYPE_1__ isc_ratelimiter_t ;
typedef TYPE_2__ isc_event_t ;


 int ISC_EVENTATTR_CANCELED ;
 int ISC_FALSE ;
 TYPE_2__* ISC_LIST_HEAD (int ) ;
 int ISC_LIST_UNLINK (int ,TYPE_2__*,int ) ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int ev_link ;
 int isc_ratelimiter_shuttingdown ;
 int isc_task_send (int *,TYPE_2__**) ;
 int isc_timer_detach (int *) ;
 int isc_timer_reset (int ,int ,int *,int *,int ) ;
 int isc_timertype_inactive ;

void
isc_ratelimiter_shutdown(isc_ratelimiter_t *rl) {
 isc_event_t *ev;
 isc_task_t *task;
 LOCK(&rl->lock);
 rl->state = isc_ratelimiter_shuttingdown;
 (void)isc_timer_reset(rl->timer, isc_timertype_inactive,
         ((void*)0), ((void*)0), ISC_FALSE);
 while ((ev = ISC_LIST_HEAD(rl->pending)) != ((void*)0)) {
  ISC_LIST_UNLINK(rl->pending, ev, ev_link);
  ev->ev_attributes |= ISC_EVENTATTR_CANCELED;
  task = ev->ev_sender;
  isc_task_send(task, &ev);
 }
 isc_timer_detach(&rl->timer);




 ev = &rl->shutdownevent;
 isc_task_send(rl->task, &ev);

 UNLOCK(&rl->lock);
}
