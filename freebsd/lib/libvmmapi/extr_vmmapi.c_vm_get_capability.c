
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmcap ;
struct vmctx {int fd; } ;
struct vm_capability {int cpuid; int captype; int capval; } ;
typedef enum vm_cap_type { ____Placeholder_vm_cap_type } vm_cap_type ;


 int VM_GET_CAPABILITY ;
 int bzero (struct vm_capability*,int) ;
 int ioctl (int ,int ,struct vm_capability*) ;

int
vm_get_capability(struct vmctx *ctx, int vcpu, enum vm_cap_type cap,
    int *retval)
{
 int error;
 struct vm_capability vmcap;

 bzero(&vmcap, sizeof(vmcap));
 vmcap.cpuid = vcpu;
 vmcap.captype = cap;

 error = ioctl(ctx->fd, VM_GET_CAPABILITY, &vmcap);
 *retval = vmcap.capval;
 return (error);
}
