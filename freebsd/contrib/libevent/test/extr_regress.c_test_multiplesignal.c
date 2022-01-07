
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;
struct event {int dummy; } ;
typedef int itv ;


 int ITIMER_REAL ;
 int SIGALRM ;
 int cleanup_test () ;
 int event_dispatch () ;
 int evsignal_add (struct event*,int *) ;
 int evsignal_del (struct event*) ;
 int evsignal_set (struct event*,int ,int ,struct event*) ;
 int memset (struct itimerval*,int ,int) ;
 int setitimer (int ,struct itimerval*,int *) ;
 int setup_test (char*) ;
 int signal_cb ;
 scalar_t__ test_ok ;

__attribute__((used)) static void
test_multiplesignal(void)
{
 struct event ev_one, ev_two;
 struct itimerval itv;

 setup_test("Multiple signal: ");

 evsignal_set(&ev_one, SIGALRM, signal_cb, &ev_one);
 evsignal_add(&ev_one, ((void*)0));

 evsignal_set(&ev_two, SIGALRM, signal_cb, &ev_two);
 evsignal_add(&ev_two, ((void*)0));

 memset(&itv, 0, sizeof(itv));
 itv.it_value.tv_sec = 0;
 itv.it_value.tv_usec = 100000;
 if (setitimer(ITIMER_REAL, &itv, ((void*)0)) == -1)
  goto skip_simplesignal;

 event_dispatch();

 skip_simplesignal:
 if (evsignal_del(&ev_one) == -1)
  test_ok = 0;
 if (evsignal_del(&ev_two) == -1)
  test_ok = 0;

 cleanup_test();
}
