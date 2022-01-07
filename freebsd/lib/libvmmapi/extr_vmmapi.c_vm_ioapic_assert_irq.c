
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_ioapic_irq {int irq; } ;


 int VM_IOAPIC_ASSERT_IRQ ;
 int bzero (struct vm_ioapic_irq*,int) ;
 int ioctl (int ,int ,struct vm_ioapic_irq*) ;

int
vm_ioapic_assert_irq(struct vmctx *ctx, int irq)
{
 struct vm_ioapic_irq ioapic_irq;

 bzero(&ioapic_irq, sizeof(struct vm_ioapic_irq));
 ioapic_irq.irq = irq;

 return (ioctl(ctx->fd, VM_IOAPIC_ASSERT_IRQ, &ioapic_irq));
}
