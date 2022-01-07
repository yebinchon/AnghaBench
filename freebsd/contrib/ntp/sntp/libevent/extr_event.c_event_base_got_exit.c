
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int event_gotterm; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int th_base_lock ;

int
event_base_got_exit(struct event_base *event_base)
{
 int res;
 EVBASE_ACQUIRE_LOCK(event_base, th_base_lock);
 res = event_base->event_gotterm;
 EVBASE_RELEASE_LOCK(event_base, th_base_lock);
 return res;
}
