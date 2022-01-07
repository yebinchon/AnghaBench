
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event {scalar_t__ magic; TYPE_1__* vmt; } ;
struct TYPE_2__ {int (* winsock_unregister_wsaevent ) (struct ub_event*) ;} ;


 scalar_t__ UB_EVENT_MAGIC ;
 TYPE_1__ default_event_vmt ;
 int fptr_ok (int) ;
 int my_winsock_unregister_wsaevent (struct ub_event*) ;
 int stub1 (struct ub_event*) ;

void
ub_winsock_unregister_wsaevent(struct ub_event* ev)
{
 if (ev && ev->magic == UB_EVENT_MAGIC) {
  fptr_ok(ev->vmt != &default_event_vmt ||
   ev->vmt->winsock_unregister_wsaevent ==
   my_winsock_unregister_wsaevent);
  (*ev->vmt->winsock_unregister_wsaevent)(ev);
 }
}
