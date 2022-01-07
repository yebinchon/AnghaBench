
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;


 int VM_REINIT ;
 int ioctl (int ,int ,int ) ;

int
vm_reinit(struct vmctx *ctx)
{

 return (ioctl(ctx->fd, VM_REINIT, 0));
}
