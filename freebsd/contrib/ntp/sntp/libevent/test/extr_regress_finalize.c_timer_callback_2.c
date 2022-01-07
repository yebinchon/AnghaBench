
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_and_count {int count; int ev2; int ev; } ;
typedef int evutil_socket_t ;


 int event_finalize (int ,int ,int ) ;
 int event_finalize_callback_2 ;

__attribute__((used)) static void
timer_callback_2(evutil_socket_t fd, short what, void *arg)
{
 struct event_and_count *evc = arg;
 event_finalize(0, evc->ev, event_finalize_callback_2);
 event_finalize(0, evc->ev2, event_finalize_callback_2);
 ++ evc->count;
 (void)fd;
 (void)what;
}
