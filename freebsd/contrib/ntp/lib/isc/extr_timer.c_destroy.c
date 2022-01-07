
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int mctx; int lock; int timers; } ;
typedef TYPE_2__ isc__timermgr_t ;
struct TYPE_9__ {scalar_t__ magic; scalar_t__ impmagic; } ;
struct TYPE_11__ {TYPE_1__ common; int lock; int task; TYPE_2__* manager; } ;
typedef TYPE_3__ isc__timer_t ;


 int DESTROYLOCK (int *) ;
 int ISC_TIMEREVENT_FIRSTEVENT ;
 int ISC_TIMEREVENT_LASTEVENT ;
 int LOCK (int *) ;
 int UNLINK (int ,TYPE_3__*,int ) ;
 int UNLOCK (int *) ;
 int deschedule (TYPE_3__*) ;
 int isc_mem_put (int ,TYPE_3__*,int) ;
 int isc_task_detach (int *) ;
 int isc_task_purgerange (int ,TYPE_3__*,int ,int ,int *) ;
 int link ;

__attribute__((used)) static void
destroy(isc__timer_t *timer) {
 isc__timermgr_t *manager = timer->manager;





 LOCK(&manager->lock);

 (void)isc_task_purgerange(timer->task,
      timer,
      ISC_TIMEREVENT_FIRSTEVENT,
      ISC_TIMEREVENT_LASTEVENT,
      ((void*)0));
 deschedule(timer);
 UNLINK(manager->timers, timer, link);

 UNLOCK(&manager->lock);

 isc_task_detach(&timer->task);
 DESTROYLOCK(&timer->lock);
 timer->common.impmagic = 0;
 timer->common.magic = 0;
 isc_mem_put(manager->mctx, timer, sizeof(*timer));
}
