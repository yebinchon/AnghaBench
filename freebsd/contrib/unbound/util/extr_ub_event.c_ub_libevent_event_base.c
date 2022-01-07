
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct event_base {int dummy; } ;


 struct ub_event_base* AS_UB_EVENT_BASE (struct event_base*) ;

struct ub_event_base *
ub_libevent_event_base(struct event_base* libevent_base)
{




 return AS_UB_EVENT_BASE(libevent_base);

}
