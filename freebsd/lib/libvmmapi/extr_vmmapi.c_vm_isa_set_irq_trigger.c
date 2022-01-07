
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_isa_irq_trigger {int atpic_irq; int trigger; } ;
typedef enum vm_intr_trigger { ____Placeholder_vm_intr_trigger } vm_intr_trigger ;


 int VM_ISA_SET_IRQ_TRIGGER ;
 int bzero (struct vm_isa_irq_trigger*,int) ;
 int ioctl (int ,int ,struct vm_isa_irq_trigger*) ;

int
vm_isa_set_irq_trigger(struct vmctx *ctx, int atpic_irq,
    enum vm_intr_trigger trigger)
{
 struct vm_isa_irq_trigger isa_irq_trigger;

 bzero(&isa_irq_trigger, sizeof(struct vm_isa_irq_trigger));
 isa_irq_trigger.atpic_irq = atpic_irq;
 isa_irq_trigger.trigger = trigger;

 return (ioctl(ctx->fd, VM_ISA_SET_IRQ_TRIGGER, &isa_irq_trigger));
}
