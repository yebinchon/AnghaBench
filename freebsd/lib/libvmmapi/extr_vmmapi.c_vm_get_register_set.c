
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmregset ;
typedef int uint64_t ;
struct vmctx {int fd; } ;
struct vm_register_set {int cpuid; unsigned int count; int const* regnums; int * regvals; } ;


 int VM_GET_REGISTER_SET ;
 int bzero (struct vm_register_set*,int) ;
 int ioctl (int ,int ,struct vm_register_set*) ;

int
vm_get_register_set(struct vmctx *ctx, int vcpu, unsigned int count,
    const int *regnums, uint64_t *regvals)
{
 int error;
 struct vm_register_set vmregset;

 bzero(&vmregset, sizeof(vmregset));
 vmregset.cpuid = vcpu;
 vmregset.count = count;
 vmregset.regnums = regnums;
 vmregset.regvals = regvals;

 error = ioctl(ctx->fd, VM_GET_REGISTER_SET, &vmregset);
 return (error);
}
