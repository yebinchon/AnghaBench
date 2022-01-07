
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int dummy; } ;


 int SIGUSR1 ;
 int cleanup_test () ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_init () ;
 int evsignal_add (struct event*,int *) ;
 int evsignal_del (struct event*) ;
 int evsignal_set (struct event*,int ,int ,struct event*) ;
 int signal_cb ;
 int test_ok ;

__attribute__((used)) static void
test_signal_dealloc(void)
{

 struct event ev;
 struct event_base *base = event_init();
 evsignal_set(&ev, SIGUSR1, signal_cb, &ev);
 evsignal_add(&ev, ((void*)0));
 evsignal_del(&ev);
 event_base_free(base);

 test_ok = 1;
 cleanup_test();
}
