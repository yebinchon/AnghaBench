
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int EV_WRITE ;
 int cleanup_test () ;
 int event_add (struct event*,int *) ;
 int event_dispatch () ;
 int event_set (struct event*,int ,int ,int ,struct event*) ;
 int exit (int) ;
 int * pair ;
 int setup_test (char*) ;
 int simple_write_cb ;

__attribute__((used)) static void
test_simplewrite(void)
{
 struct event ev;


 setup_test("Simple write: ");

 event_set(&ev, pair[0], EV_WRITE, simple_write_cb, &ev);
 if (event_add(&ev, ((void*)0)) == -1)
  exit(1);
 event_dispatch();

 cleanup_test();
}
