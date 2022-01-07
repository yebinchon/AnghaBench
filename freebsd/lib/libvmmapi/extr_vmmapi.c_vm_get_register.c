
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmreg ;
typedef int uint64_t ;
struct vmctx {int fd; } ;
struct vm_register {int cpuid; int regnum; int regval; } ;


 int VM_GET_REGISTER ;
 int bzero (struct vm_register*,int) ;
 int ioctl (int ,int ,struct vm_register*) ;

int
vm_get_register(struct vmctx *ctx, int vcpu, int reg, uint64_t *ret_val)
{
 int error;
 struct vm_register vmreg;

 bzero(&vmreg, sizeof(vmreg));
 vmreg.cpuid = vcpu;
 vmreg.regnum = reg;

 error = ioctl(ctx->fd, VM_GET_REGISTER, &vmreg);
 *ret_val = vmreg.regval;
 return (error);
}
