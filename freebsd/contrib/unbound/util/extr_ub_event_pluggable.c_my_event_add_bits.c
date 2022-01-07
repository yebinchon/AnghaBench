
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ub_event {int dummy; } ;
struct TYPE_3__ {int ev_events; } ;
struct TYPE_4__ {TYPE_1__ ev; } ;


 TYPE_2__* AS_MY_EVENT (struct ub_event*) ;
 int NATIVE_BITS (short) ;

__attribute__((used)) static void
my_event_add_bits(struct ub_event* ev, short bits)
{
 AS_MY_EVENT(ev)->ev.ev_events |= NATIVE_BITS(bits);
}
