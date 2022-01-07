
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct event_base {scalar_t__ n_deferreds_queued; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 scalar_t__ MAX_DEFERREDS_QUEUED ;
 struct event_base* current_base ;
 int event_callback_activate_later_nolock_ (struct event_base*,struct event_callback*) ;
 int event_callback_activate_nolock_ (struct event_base*,struct event_callback*) ;
 int th_base_lock ;

int
event_deferred_cb_schedule_(struct event_base *base, struct event_callback *cb)
{
 int r = 1;
 if (!base)
  base = current_base;
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 if (base->n_deferreds_queued > MAX_DEFERREDS_QUEUED) {
  event_callback_activate_later_nolock_(base, cb);
 } else {
  ++base->n_deferreds_queued;
  r = event_callback_activate_nolock_(base, cb);
 }
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return r;
}
