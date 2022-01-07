
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event {int dummy; } ;
struct TYPE_2__ {int ev_events; } ;


 TYPE_1__* AS_EVENT (struct ub_event*) ;
 int NATIVE_BITS (short) ;

void
ub_event_add_bits(struct ub_event* ev, short bits)
{
 AS_EVENT(ev)->ev_events |= NATIVE_BITS(bits);
}
