
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm {int maxcpus; int cookie; } ;


 int EINVAL ;
 int VMGETREG (int ,int,int,int *) ;
 int VM_REG_LAST ;

int
vm_get_register(struct vm *vm, int vcpu, int reg, uint64_t *retval)
{

 if (vcpu < 0 || vcpu >= vm->maxcpus)
  return (EINVAL);

 if (reg >= VM_REG_LAST)
  return (EINVAL);

 return (VMGETREG(vm->cookie, vcpu, reg, retval));
}
