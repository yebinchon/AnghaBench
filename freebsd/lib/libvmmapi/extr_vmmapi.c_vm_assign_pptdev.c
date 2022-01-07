
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_pptdev {int bus; int slot; int func; } ;
typedef int pptdev ;


 int VM_BIND_PPTDEV ;
 int bzero (struct vm_pptdev*,int) ;
 int ioctl (int ,int ,struct vm_pptdev*) ;

int
vm_assign_pptdev(struct vmctx *ctx, int bus, int slot, int func)
{
 struct vm_pptdev pptdev;

 bzero(&pptdev, sizeof(pptdev));
 pptdev.bus = bus;
 pptdev.slot = slot;
 pptdev.func = func;

 return (ioctl(ctx->fd, VM_BIND_PPTDEV, &pptdev));
}
