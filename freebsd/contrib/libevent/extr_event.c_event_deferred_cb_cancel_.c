
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct event_base {int dummy; } ;


 struct event_base* current_base ;
 int event_callback_cancel_ (struct event_base*,struct event_callback*) ;

void
event_deferred_cb_cancel_(struct event_base *base, struct event_callback *cb)
{
 if (!base)
  base = current_base;
 event_callback_cancel_(base, cb);
}
