
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; int cookie; } ;


 int EINVAL ;
 int VMGETCAP (int ,int,int,int*) ;
 int VM_CAP_MAX ;

int
vm_get_capability(struct vm *vm, int vcpu, int type, int *retval)
{
 if (vcpu < 0 || vcpu >= vm->maxcpus)
  return (EINVAL);

 if (type < 0 || type >= VM_CAP_MAX)
  return (EINVAL);

 return (VMGETCAP(vm->cookie, vcpu, type, retval));
}
