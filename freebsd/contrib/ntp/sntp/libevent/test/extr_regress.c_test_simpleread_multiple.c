
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int EV_READ ;
 int SHUT_WR ;
 int TEST1 ;
 int cleanup_test () ;
 int event_add (struct event*,int *) ;
 int event_dispatch () ;
 int event_set (struct event*,int ,int ,int ,int *) ;
 int exit (int) ;
 int * pair ;
 int setup_test (char*) ;
 int shutdown (int ,int ) ;
 int simpleread_multiple_cb ;
 scalar_t__ strlen (int ) ;
 int tt_fail_perror (char*) ;
 scalar_t__ write (int ,int ,scalar_t__) ;

__attribute__((used)) static void
test_simpleread_multiple(void)
{
 struct event one, two;


 setup_test("Simple read to multiple evens: ");

 if (write(pair[0], TEST1, strlen(TEST1)+1) < 0) {
  tt_fail_perror("write");
 }

 shutdown(pair[0], SHUT_WR);

 event_set(&one, pair[1], EV_READ, simpleread_multiple_cb, ((void*)0));
 if (event_add(&one, ((void*)0)) == -1)
  exit(1);
 event_set(&two, pair[1], EV_READ, simpleread_multiple_cb, ((void*)0));
 if (event_add(&two, ((void*)0)) == -1)
  exit(1);
 event_dispatch();

 cleanup_test();
}
