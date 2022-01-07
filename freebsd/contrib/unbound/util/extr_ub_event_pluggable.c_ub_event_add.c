
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event {scalar_t__ magic; TYPE_1__* vmt; } ;
struct timeval {int dummy; } ;
struct TYPE_2__ {int (* add ) (struct ub_event*,struct timeval*) ;} ;


 scalar_t__ UB_EVENT_MAGIC ;
 TYPE_1__ default_event_vmt ;
 int fptr_ok (int) ;
 int my_event_add (struct ub_event*,struct timeval*) ;
 int stub1 (struct ub_event*,struct timeval*) ;

int
ub_event_add(struct ub_event* ev, struct timeval* tv)
{
 if (ev->magic == UB_EVENT_MAGIC) {
  fptr_ok(ev->vmt != &default_event_vmt ||
   ev->vmt->add == my_event_add);
  return (*ev->vmt->add)(ev, tv);
 }
       return -1;
}
