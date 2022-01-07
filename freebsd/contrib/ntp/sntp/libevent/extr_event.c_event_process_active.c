
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct event_base {int max_dispatch_callbacks; int limit_callbacks_after_prio; int nactivequeues; int event_running_priority; struct evcallback_list* activequeues; TYPE_1__ max_dispatch_time; } ;
struct evcallback_list {int dummy; } ;


 int const INT_MAX ;
 int * TAILQ_FIRST (struct evcallback_list*) ;
 int event_process_active_single_queue (struct event_base*,struct evcallback_list*,int const,struct timeval const*) ;
 int evutil_timeradd (TYPE_1__*,struct timeval*,struct timeval*) ;
 int gettime (struct event_base*,struct timeval*) ;
 int update_time_cache (struct event_base*) ;

__attribute__((used)) static int
event_process_active(struct event_base *base)
{

 struct evcallback_list *activeq = ((void*)0);
 int i, c = 0;
 const struct timeval *endtime;
 struct timeval tv;
 const int maxcb = base->max_dispatch_callbacks;
 const int limit_after_prio = base->limit_callbacks_after_prio;
 if (base->max_dispatch_time.tv_sec >= 0) {
  update_time_cache(base);
  gettime(base, &tv);
  evutil_timeradd(&base->max_dispatch_time, &tv, &tv);
  endtime = &tv;
 } else {
  endtime = ((void*)0);
 }

 for (i = 0; i < base->nactivequeues; ++i) {
  if (TAILQ_FIRST(&base->activequeues[i]) != ((void*)0)) {
   base->event_running_priority = i;
   activeq = &base->activequeues[i];
   if (i < limit_after_prio)
    c = event_process_active_single_queue(base, activeq,
        INT_MAX, ((void*)0));
   else
    c = event_process_active_single_queue(base, activeq,
        maxcb, endtime);
   if (c < 0) {
    goto done;
   } else if (c > 0)
    break;



  }
 }

done:
 base->event_running_priority = -1;

 return c;
}
