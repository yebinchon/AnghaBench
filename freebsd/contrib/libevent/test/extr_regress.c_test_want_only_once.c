
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct event {int dummy; } ;


 int EV_READ ;
 int TEST1 ;
 int cleanup_test () ;
 int event_add (struct event*,int *) ;
 int event_dispatch () ;
 int event_loopexit (struct timeval*) ;
 int event_set (struct event*,int ,int ,int ,struct event*) ;
 int evutil_timerclear (struct timeval*) ;
 int exit (int) ;
 int * pair ;
 int read_once_cb ;
 int setup_test (char*) ;
 scalar_t__ strlen (int ) ;
 int tt_fail_perror (char*) ;
 scalar_t__ write (int ,int ,scalar_t__) ;

__attribute__((used)) static void
test_want_only_once(void)
{
 struct event ev;
 struct timeval tv;


 setup_test("Want read only once: ");

 if (write(pair[0], TEST1, strlen(TEST1)+1) < 0) {
  tt_fail_perror("write");
 }


 evutil_timerclear(&tv);
 tv.tv_usec = 300*1000;
 event_loopexit(&tv);

 event_set(&ev, pair[1], EV_READ, read_once_cb, &ev);
 if (event_add(&ev, ((void*)0)) == -1)
  exit(1);
 event_dispatch();

 cleanup_test();
}
