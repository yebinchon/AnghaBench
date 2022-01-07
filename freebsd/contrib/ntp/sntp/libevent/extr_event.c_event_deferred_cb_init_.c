
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int evcb_selfcb; } ;
struct event_callback {int evcb_closure; int evcb_pri; void* evcb_arg; TYPE_1__ evcb_cb_union; } ;
typedef int ev_uint8_t ;
typedef int deferred_cb_fn ;


 int EV_CLOSURE_CB_SELF ;
 int memset (struct event_callback*,int ,int) ;

void
event_deferred_cb_init_(struct event_callback *cb, ev_uint8_t priority, deferred_cb_fn fn, void *arg)
{
 memset(cb, 0, sizeof(*cb));
 cb->evcb_cb_union.evcb_selfcb = fn;
 cb->evcb_arg = arg;
 cb->evcb_pri = priority;
 cb->evcb_closure = EV_CLOSURE_CB_SELF;
}
