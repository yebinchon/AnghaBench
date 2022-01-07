
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_event {int ie_handlers; } ;


 int CK_SLIST_EMPTY (int *) ;
 int arm_mask_irq (int) ;
 int arm_unmask_irq (int) ;
 int intr_event_remove_handler (void*) ;
 struct intr_event** intr_events ;

int
arm_remove_irqhandler(int irq, void *cookie)
{
 struct intr_event *event;
 int error;

 event = intr_events[irq];
 arm_mask_irq(irq);

 error = intr_event_remove_handler(cookie);

 if (!CK_SLIST_EMPTY(&event->ie_handlers))
  arm_unmask_irq(irq);
 return (error);
}
