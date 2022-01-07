
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int EVLOOP_ONCE ;
 int EV_READ ;
 int cleanup_test () ;
 int event_add (struct event*,int *) ;
 int event_del (struct event*) ;
 int event_loop (int ) ;
 scalar_t__ event_pending (struct event*,int ,int *) ;
 int event_set (struct event*,int ,int ,int ,struct event*) ;
 int exit (int) ;
 int * pair ;
 int re_add_read_cb ;
 struct event* readd_test_event_last_added ;
 int setup_test (char*) ;
 int test_ok ;
 int tt_fail_perror (char*) ;
 scalar_t__ write (int ,char*,int) ;

__attribute__((used)) static void
test_nonpersist_readd(void)
{
 struct event ev1, ev2;

 setup_test("Re-add nonpersistent events: ");
 event_set(&ev1, pair[0], EV_READ, re_add_read_cb, &ev2);
 event_set(&ev2, pair[1], EV_READ, re_add_read_cb, &ev1);

 if (write(pair[0], "Hello", 5) < 0) {
  tt_fail_perror("write(pair[0])");
 }

 if (write(pair[1], "Hello", 5) < 0) {
  tt_fail_perror("write(pair[1])\n");
 }

 if (event_add(&ev1, ((void*)0)) == -1 ||
     event_add(&ev2, ((void*)0)) == -1) {
  test_ok = 0;
 }
 if (test_ok != 0)
  exit(1);
 event_loop(EVLOOP_ONCE);
 if (test_ok != 2)
  exit(1);





 if (!readd_test_event_last_added) {
  test_ok = 0;
 } else if (readd_test_event_last_added == &ev1) {
  if (!event_pending(&ev1, EV_READ, ((void*)0)) ||
      event_pending(&ev2, EV_READ, ((void*)0)))
   test_ok = 0;
 } else {
  if (event_pending(&ev1, EV_READ, ((void*)0)) ||
      !event_pending(&ev2, EV_READ, ((void*)0)))
   test_ok = 0;
 }

 event_del(&ev1);
 event_del(&ev2);

 cleanup_test();
}
