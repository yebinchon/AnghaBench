
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int EV_READ ;
 int EV_TIMEOUT ;
 int event_active (int *,int ,int) ;
 int n_pai_calls ;
 int * pai_events ;

__attribute__((used)) static void
prio_active_inversion_cb(evutil_socket_t fd, short what, void *arg)
{
 int *call_order = arg;
 *call_order = n_pai_calls++;
 if (n_pai_calls == 1) {


  event_active(&pai_events[1], EV_READ, 1);


  event_active(&pai_events[2], EV_TIMEOUT, 1);
 }
}
