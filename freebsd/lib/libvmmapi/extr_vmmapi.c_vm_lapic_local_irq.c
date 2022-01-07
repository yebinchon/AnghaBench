
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmirq ;
struct vmctx {int fd; } ;
struct vm_lapic_irq {int cpuid; int vector; } ;


 int VM_LAPIC_LOCAL_IRQ ;
 int bzero (struct vm_lapic_irq*,int) ;
 int ioctl (int ,int ,struct vm_lapic_irq*) ;

int
vm_lapic_local_irq(struct vmctx *ctx, int vcpu, int vector)
{
 struct vm_lapic_irq vmirq;

 bzero(&vmirq, sizeof(vmirq));
 vmirq.cpuid = vcpu;
 vmirq.vector = vector;

 return (ioctl(ctx->fd, VM_LAPIC_LOCAL_IRQ, &vmirq));
}
