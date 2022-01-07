
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* evcb_cbfinalize ) (struct event_callback*,void*) ;} ;
struct event_callback {int evcb_flags; TYPE_1__ evcb_cb_union; int evcb_closure; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;


 int EVENT_DEL_NOBLOCK ;
 int EVLIST_FINALIZING ;
 int EVLIST_INIT ;
 int EV_CLOSURE_CB_FINALIZE ;
 int event_callback_activate_nolock_ (struct event_base*,struct event_callback*) ;
 int event_callback_cancel_nolock_ (struct event_base*,struct event_callback*,int ) ;
 struct event* event_callback_to_event (struct event_callback*) ;
 int event_del_nolock_ (struct event*,int ) ;

void
event_callback_finalize_nolock_(struct event_base *base, unsigned flags, struct event_callback *evcb, void (*cb)(struct event_callback *, void *))
{
 struct event *ev = ((void*)0);
 if (evcb->evcb_flags & EVLIST_INIT) {
  ev = event_callback_to_event(evcb);
  event_del_nolock_(ev, EVENT_DEL_NOBLOCK);
 } else {
  event_callback_cancel_nolock_(base, evcb, 0);
 }

 evcb->evcb_closure = EV_CLOSURE_CB_FINALIZE;
 evcb->evcb_cb_union.evcb_cbfinalize = cb;
 event_callback_activate_nolock_(base, evcb);
 evcb->evcb_flags |= EVLIST_FINALIZING;
}
