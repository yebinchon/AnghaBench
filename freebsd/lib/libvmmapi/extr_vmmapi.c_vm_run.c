
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmrun ;
struct vmctx {int fd; } ;
struct vm_run {int cpuid; int vm_exit; } ;
struct vm_exit {int dummy; } ;


 int VM_RUN ;
 int bcopy (int *,struct vm_exit*,int) ;
 int bzero (struct vm_run*,int) ;
 int ioctl (int ,int ,struct vm_run*) ;

int
vm_run(struct vmctx *ctx, int vcpu, struct vm_exit *vmexit)
{
 int error;
 struct vm_run vmrun;

 bzero(&vmrun, sizeof(vmrun));
 vmrun.cpuid = vcpu;

 error = ioctl(ctx->fd, VM_RUN, &vmrun);
 bcopy(&vmrun.vm_exit, vmexit, sizeof(struct vm_exit));
 return (error);
}
