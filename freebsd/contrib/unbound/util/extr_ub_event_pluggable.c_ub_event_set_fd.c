
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event {scalar_t__ magic; TYPE_1__* vmt; } ;
struct TYPE_2__ {int (* set_fd ) (struct ub_event*,int) ;} ;


 scalar_t__ UB_EVENT_MAGIC ;
 TYPE_1__ default_event_vmt ;
 int fptr_ok (int) ;
 int my_event_set_fd (struct ub_event*,int) ;
 int stub1 (struct ub_event*,int) ;

void
ub_event_set_fd(struct ub_event* ev, int fd)
{
 if (ev->magic == UB_EVENT_MAGIC) {
  fptr_ok(ev->vmt != &default_event_vmt ||
   ev->vmt->set_fd == my_event_set_fd);
  (*ev->vmt->set_fd)(ev, fd);
 }
}
