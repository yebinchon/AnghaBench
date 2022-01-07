
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmsuspend ;
struct vmctx {int fd; } ;
struct vm_suspend {int how; } ;
typedef enum vm_suspend_how { ____Placeholder_vm_suspend_how } vm_suspend_how ;


 int VM_SUSPEND ;
 int bzero (struct vm_suspend*,int) ;
 int ioctl (int ,int ,struct vm_suspend*) ;

int
vm_suspend(struct vmctx *ctx, enum vm_suspend_how how)
{
 struct vm_suspend vmsuspend;

 bzero(&vmsuspend, sizeof(vmsuspend));
 vmsuspend.how = how;
 return (ioctl(ctx->fd, VM_SUSPEND, &vmsuspend));
}
