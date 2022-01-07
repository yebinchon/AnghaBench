
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int event_finalize_callback_fn ;


 unsigned int EVENT_FINALIZE_FREE_ ;
 int event_finalize_impl_ (unsigned int,struct event*,int ) ;

int
event_free_finalize(unsigned flags, struct event *ev, event_finalize_callback_fn cb)
{
 return event_finalize_impl_(flags|EVENT_FINALIZE_FREE_, ev, cb);
}
