
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct event_base {int dummy; } ;


 struct event_base* AS_EVENT_BASE (struct ub_event_base*) ;

struct event_base *
ub_libevent_get_event_base(struct ub_event_base* base)
{




 return AS_EVENT_BASE(base);

}
