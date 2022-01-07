
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {scalar_t__ evcb_pri; } ;
struct event_base {scalar_t__ nactivequeues; } ;


 int memset (struct event_callback*,int ,int) ;

void
event_callback_init_(struct event_base *base,
    struct event_callback *cb)
{
 memset(cb, 0, sizeof(*cb));
 cb->evcb_pri = base->nactivequeues - 1;
}
