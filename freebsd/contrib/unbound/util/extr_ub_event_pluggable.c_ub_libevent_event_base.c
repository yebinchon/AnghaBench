
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int * vmt; int magic; } ;
struct my_event_base {struct ub_event_base super; struct event_base* base; } ;
struct event_base {int dummy; } ;


 int UB_EVENT_MAGIC ;
 scalar_t__ calloc (int,int) ;
 int default_event_base_vmt ;

struct ub_event_base*
ub_libevent_event_base(struct event_base* base)
{




 struct my_event_base* my_base = (struct my_event_base*)calloc(1,
  sizeof(struct my_event_base));

 if (!my_base)
  return ((void*)0);
 my_base->super.magic = UB_EVENT_MAGIC;
 my_base->super.vmt = &default_event_base_vmt;
 my_base->base = base;
 return &my_base->super;

}
