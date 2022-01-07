
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int EVUTIL_SHUT_WR ;
 int EV_READ ;
 int TEST1 ;
 int cleanup_test () ;
 int event_add (struct event*,int *) ;
 int event_dispatch () ;
 int event_set (struct event*,int ,int ,int ,struct event*) ;
 int exit (int) ;
 int * pair ;
 int setup_test (char*) ;
 int shutdown (int ,int ) ;
 int simple_read_cb ;
 scalar_t__ strlen (int ) ;
 int tt_fail_perror (char*) ;
 scalar_t__ write (int ,int ,scalar_t__) ;

__attribute__((used)) static void
test_simpleread(void)
{
 struct event ev;


 setup_test("Simple read: ");

 if (write(pair[0], TEST1, strlen(TEST1)+1) < 0) {
  tt_fail_perror("write");
 }

 shutdown(pair[0], EVUTIL_SHUT_WR);

 event_set(&ev, pair[1], EV_READ, simple_read_cb, &ev);
 if (event_add(&ev, ((void*)0)) == -1)
  exit(1);
 event_dispatch();

 cleanup_test();
}
