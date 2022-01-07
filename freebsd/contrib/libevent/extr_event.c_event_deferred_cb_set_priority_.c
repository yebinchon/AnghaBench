
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int evcb_pri; } ;
typedef int ev_uint8_t ;



void
event_deferred_cb_set_priority_(struct event_callback *cb, ev_uint8_t priority)
{
 cb->evcb_pri = priority;
}
