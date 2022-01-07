
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct event {int dummy; } ;


 int cleanup_test () ;
 int event_base_got_break (int ) ;
 int event_base_got_exit (int ) ;
 int event_dispatch () ;
 int event_loopexit (struct timeval*) ;
 int evtimer_add (struct event*,struct timeval*) ;
 int evtimer_del (struct event*) ;
 int evtimer_set (struct event*,int ,int *) ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int global_base ;
 int setup_test (char*) ;
 int test_ok ;
 int test_timeval_diff_eq (struct timeval*,struct timeval*,int) ;
 int timeout_cb ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_loopexit(void)
{
 struct timeval tv, tv_start, tv_end;
 struct event ev;

 setup_test("Loop exit: ");

 tv.tv_usec = 0;
 tv.tv_sec = 60*60*24;
 evtimer_set(&ev, timeout_cb, ((void*)0));
 evtimer_add(&ev, &tv);

 tv.tv_usec = 300*1000;
 tv.tv_sec = 0;
 event_loopexit(&tv);

 evutil_gettimeofday(&tv_start, ((void*)0));
 event_dispatch();
 evutil_gettimeofday(&tv_end, ((void*)0));

 evtimer_del(&ev);

 tt_assert(event_base_got_exit(global_base));
 tt_assert(!event_base_got_break(global_base));

 test_timeval_diff_eq(&tv_start, &tv_end, 300);

 test_ok = 1;
end:
 cleanup_test();
}
