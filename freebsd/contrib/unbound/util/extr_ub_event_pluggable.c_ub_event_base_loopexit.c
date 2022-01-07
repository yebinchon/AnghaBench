
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event_base {scalar_t__ magic; TYPE_1__* vmt; } ;
struct TYPE_2__ {int (* loopexit ) (struct ub_event_base*,int *) ;} ;


 scalar_t__ UB_EVENT_MAGIC ;
 TYPE_1__ default_event_base_vmt ;
 int fptr_ok (int) ;
 int my_event_base_loopexit (struct ub_event_base*,int *) ;
 int stub1 (struct ub_event_base*,int *) ;

int
ub_event_base_loopexit(struct ub_event_base* base)
{
 if (base->magic == UB_EVENT_MAGIC) {
  fptr_ok(base->vmt != &default_event_base_vmt ||
   base->vmt->loopexit == my_event_base_loopexit);
  return (*base->vmt->loopexit)(base, ((void*)0));
 }
 return -1;
}
