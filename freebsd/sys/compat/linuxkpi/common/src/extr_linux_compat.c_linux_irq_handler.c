
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_ent {int arg; int irq; int (* handler ) (int ,int ) ;} ;


 int curthread ;
 int linux_set_current (int ) ;
 int stub1 (int ,int ) ;

void
linux_irq_handler(void *ent)
{
 struct irq_ent *irqe;

 linux_set_current(curthread);

 irqe = ent;
 irqe->handler(irqe->irq, irqe->arg);
}
