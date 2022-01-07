
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* evcb_cbfinalize ) (struct event_callback*,int ) ;} ;
struct event_callback {int evcb_flags; int evcb_closure; int evcb_arg; TYPE_3__ evcb_cb_union; } ;
struct event_base {int dummy; } ;
struct TYPE_4__ {int (* evcb_evfinalize ) (struct event*,int ) ;} ;
struct TYPE_5__ {TYPE_1__ evcb_cb_union; } ;
struct event {int ev_flags; int ev_arg; TYPE_2__ ev_evcallback; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int EVENT_DEL_EVEN_IF_FINALIZING ;
 int EVLIST_FINALIZING ;
 int EVLIST_INIT ;
 int EVLIST_INTERNAL ;



 int event_callback_cancel_nolock_ (struct event_base*,struct event_callback*,int) ;
 struct event* event_callback_to_event (struct event_callback*) ;
 int event_del_ (struct event*,int ) ;
 int mm_free (struct event*) ;
 int stub1 (struct event*,int ) ;
 int stub2 (struct event_callback*,int ) ;
 int th_base_lock ;

__attribute__((used)) static int
event_base_cancel_single_callback_(struct event_base *base,
    struct event_callback *evcb,
    int run_finalizers)
{
 int result = 0;

 if (evcb->evcb_flags & EVLIST_INIT) {
  struct event *ev = event_callback_to_event(evcb);
  if (!(ev->ev_flags & EVLIST_INTERNAL)) {
   event_del_(ev, EVENT_DEL_EVEN_IF_FINALIZING);
   result = 1;
  }
 } else {
  EVBASE_ACQUIRE_LOCK(base, th_base_lock);
  event_callback_cancel_nolock_(base, evcb, 1);
  EVBASE_RELEASE_LOCK(base, th_base_lock);
  result = 1;
 }

 if (run_finalizers && (evcb->evcb_flags & EVLIST_FINALIZING)) {
  switch (evcb->evcb_closure) {
  case 129:
  case 128: {
   struct event *ev = event_callback_to_event(evcb);
   ev->ev_evcallback.evcb_cb_union.evcb_evfinalize(ev, ev->ev_arg);
   if (evcb->evcb_closure == 128)
    mm_free(ev);
   break;
  }
  case 130:
   evcb->evcb_cb_union.evcb_cbfinalize(evcb, evcb->evcb_arg);
   break;
  default:
   break;
  }
 }
 return result;
}
