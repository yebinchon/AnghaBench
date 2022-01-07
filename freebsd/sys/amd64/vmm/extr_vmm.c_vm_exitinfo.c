
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_exit {int dummy; } ;
struct vm {int maxcpus; struct vcpu* vcpu; } ;
struct vcpu {struct vm_exit exitinfo; } ;


 int panic (char*,int) ;

struct vm_exit *
vm_exitinfo(struct vm *vm, int cpuid)
{
 struct vcpu *vcpu;

 if (cpuid < 0 || cpuid >= vm->maxcpus)
  panic("vm_exitinfo: invalid cpuid %d", cpuid);

 vcpu = &vm->vcpu[cpuid];

 return (&vcpu->exitinfo);
}
