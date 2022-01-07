
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_timermgr_t ;
typedef int isc_task_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_8__ {int refs; int pertic; int lock; int shutdownevent; int * timer; int * task; int pending; int state; int interval; int * mctx; } ;
typedef TYPE_1__ isc_ratelimiter_t ;
typedef int isc_mem_t ;
typedef int isc_event_t ;


 int DESTROYLOCK (int *) ;
 int INSIST (int) ;
 int ISC_EVENT_INIT (int *,int,int ,int *,int ,int ,TYPE_1__*,TYPE_1__*,int *,int *) ;
 int ISC_LIST_INIT (int ) ;
 int ISC_RATELIMITEREVENT_SHUTDOWN ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int isc_interval_set (int *,int ,int ) ;
 TYPE_1__* isc_mem_get (int *,int) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;
 scalar_t__ isc_mutex_init (int *) ;
 int isc_ratelimiter_idle ;
 scalar_t__ isc_timer_create (int *,int ,int *,int *,int *,int ,TYPE_1__*,int **) ;
 int isc_timertype_inactive ;
 int ratelimiter_shutdowncomplete ;
 int ratelimiter_tick ;

isc_result_t
isc_ratelimiter_create(isc_mem_t *mctx, isc_timermgr_t *timermgr,
         isc_task_t *task, isc_ratelimiter_t **ratelimiterp)
{
 isc_result_t result;
 isc_ratelimiter_t *rl;
 INSIST(ratelimiterp != ((void*)0) && *ratelimiterp == ((void*)0));

 rl = isc_mem_get(mctx, sizeof(*rl));
 if (rl == ((void*)0))
  return ISC_R_NOMEMORY;
 rl->mctx = mctx;
 rl->refs = 1;
 rl->task = task;
 isc_interval_set(&rl->interval, 0, 0);
 rl->timer = ((void*)0);
 rl->pertic = 1;
 rl->state = isc_ratelimiter_idle;
 ISC_LIST_INIT(rl->pending);

 result = isc_mutex_init(&rl->lock);
 if (result != ISC_R_SUCCESS)
  goto free_mem;
 result = isc_timer_create(timermgr, isc_timertype_inactive,
      ((void*)0), ((void*)0), rl->task, ratelimiter_tick,
      rl, &rl->timer);
 if (result != ISC_R_SUCCESS)
  goto free_mutex;





 rl->refs++;

 ISC_EVENT_INIT(&rl->shutdownevent,
         sizeof(isc_event_t),
         0, ((void*)0), ISC_RATELIMITEREVENT_SHUTDOWN,
         ratelimiter_shutdowncomplete, rl, rl, ((void*)0), ((void*)0));

 *ratelimiterp = rl;
 return (ISC_R_SUCCESS);

free_mutex:
 DESTROYLOCK(&rl->lock);
free_mem:
 isc_mem_put(mctx, rl, sizeof(*rl));
 return (result);
}
