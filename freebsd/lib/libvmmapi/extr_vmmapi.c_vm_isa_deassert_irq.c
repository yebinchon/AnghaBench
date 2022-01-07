
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_isa_irq {int atpic_irq; int ioapic_irq; } ;


 int VM_ISA_DEASSERT_IRQ ;
 int bzero (struct vm_isa_irq*,int) ;
 int ioctl (int ,int ,struct vm_isa_irq*) ;

int
vm_isa_deassert_irq(struct vmctx *ctx, int atpic_irq, int ioapic_irq)
{
 struct vm_isa_irq isa_irq;

 bzero(&isa_irq, sizeof(struct vm_isa_irq));
 isa_irq.atpic_irq = atpic_irq;
 isa_irq.ioapic_irq = ioapic_irq;

 return (ioctl(ctx->fd, VM_ISA_DEASSERT_IRQ, &isa_irq));
}
