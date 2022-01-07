
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int ev_base; } ;


 int EVBASE_ACQUIRE_LOCK (int ,int ) ;
 int EVBASE_RELEASE_LOCK (int ,int ) ;
 int event_active_later_nolock_ (struct event*,int) ;
 int th_base_lock ;

void
event_active_later_(struct event *ev, int res)
{
 EVBASE_ACQUIRE_LOCK(ev->ev_base, th_base_lock);
 event_active_later_nolock_(ev, res);
 EVBASE_RELEASE_LOCK(ev->ev_base, th_base_lock);
}
