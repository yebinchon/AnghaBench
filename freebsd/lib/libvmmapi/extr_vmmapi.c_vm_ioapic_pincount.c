
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;


 int VM_IOAPIC_PINCOUNT ;
 int ioctl (int ,int ,int*) ;

int
vm_ioapic_pincount(struct vmctx *ctx, int *pincount)
{

 return (ioctl(ctx->fd, VM_IOAPIC_PINCOUNT, pincount));
}
