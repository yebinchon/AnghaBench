
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int evmap_signal_active_ (struct event_base*,int,int) ;
 int th_base_lock ;

void
event_base_active_by_signal(struct event_base *base, int sig)
{
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 evmap_signal_active_(base, sig, 1);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
