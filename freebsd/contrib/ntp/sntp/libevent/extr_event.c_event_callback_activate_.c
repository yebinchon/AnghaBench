
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct event_base {int dummy; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int event_callback_activate_nolock_ (struct event_base*,struct event_callback*) ;
 int th_base_lock ;

int
event_callback_activate_(struct event_base *base,
    struct event_callback *evcb)
{
 int r;
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 r = event_callback_activate_nolock_(base, evcb);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return r;
}
