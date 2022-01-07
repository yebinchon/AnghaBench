
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event_base {int * vmt; } ;
struct event_base {int dummy; } ;
struct TYPE_2__ {struct event_base* base; } ;


 TYPE_1__* AS_MY_EVENT_BASE (struct ub_event_base*) ;
 int default_event_base_vmt ;

struct event_base*
ub_libevent_get_event_base(struct ub_event_base* base)
{

 if (base->vmt == &default_event_base_vmt)
  return AS_MY_EVENT_BASE(base)->base;



 return ((void*)0);
}
