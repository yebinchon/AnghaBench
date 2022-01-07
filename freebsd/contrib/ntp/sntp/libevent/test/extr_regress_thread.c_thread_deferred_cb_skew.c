
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int member_0; int tv_sec; scalar_t__ tv_usec; int member_1; } ;
struct event_config {int dummy; } ;
struct event_base {int dummy; } ;
struct TYPE_2__ {struct event_base* queue; } ;


 int EV_TIMEOUT ;
 int QUEUE_THREAD_COUNT ;
 int THREAD_JOIN (int ) ;
 int TT_BLATHER (char*) ;
 int callback_count ;
 TYPE_1__* deferred_data ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new_with_config (struct event_config*) ;
 int event_base_once (struct event_base*,int,int ,int ,int *,struct timeval*) ;
 int event_config_free (struct event_config*) ;
 struct event_config* event_config_new () ;
 int event_config_set_max_dispatch_interval (struct event_config*,int *,int,int ) ;
 int evutil_gettimeofday (int *,int *) ;
 int evutil_timersub (int *,int *,struct timeval*) ;
 int * load_threads ;
 int start_threads_callback ;
 int timer_callback ;
 int timer_end ;
 int timer_start ;
 int tt_assert (int) ;

__attribute__((used)) static void
thread_deferred_cb_skew(void *arg)
{
 struct timeval tv_timer = {1, 0};
 struct event_base *base = ((void*)0);
 struct event_config *cfg = ((void*)0);
 struct timeval elapsed;
 int elapsed_usec;
 int i;

 cfg = event_config_new();
 tt_assert(cfg);
 event_config_set_max_dispatch_interval(cfg, ((void*)0), 16, 0);

 base = event_base_new_with_config(cfg);
 tt_assert(base);

 for (i = 0; i < QUEUE_THREAD_COUNT; ++i)
  deferred_data[i].queue = base;

 evutil_gettimeofday(&timer_start, ((void*)0));
 event_base_once(base, -1, EV_TIMEOUT, timer_callback, ((void*)0),
   &tv_timer);
 event_base_once(base, -1, EV_TIMEOUT, start_threads_callback,
   ((void*)0), ((void*)0));
 event_base_dispatch(base);

 evutil_timersub(&timer_end, &timer_start, &elapsed);
 TT_BLATHER(("callback count, %u", callback_count));
 elapsed_usec =
     (unsigned)(elapsed.tv_sec*1000000 + elapsed.tv_usec);
 TT_BLATHER(("elapsed time, %u usec", elapsed_usec));



 tt_assert(elapsed_usec >= 600000 && elapsed_usec <= 1400000);

end:
 for (i = 0; i < QUEUE_THREAD_COUNT; ++i)
  THREAD_JOIN(load_threads[i]);
 if (base)
  event_base_free(base);
 if (cfg)
  event_config_free(cfg);
}
