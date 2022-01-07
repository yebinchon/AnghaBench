
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_activate_cpu {int vcpuid; } ;


 int VM_SUSPEND_CPU ;
 int bzero (struct vm_activate_cpu*,int) ;
 int ioctl (int ,int ,struct vm_activate_cpu*) ;

int
vm_suspend_cpu(struct vmctx *ctx, int vcpu)
{
 struct vm_activate_cpu ac;
 int error;

 bzero(&ac, sizeof(struct vm_activate_cpu));
 ac.vcpuid = vcpu;
 error = ioctl(ctx->fd, VM_SUSPEND_CPU, &ac);
 return (error);
}
