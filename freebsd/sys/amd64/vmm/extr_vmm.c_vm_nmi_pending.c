
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; struct vcpu* vcpu; } ;
struct vcpu {int nmi_pending; } ;


 int panic (char*,int) ;

int
vm_nmi_pending(struct vm *vm, int vcpuid)
{
 struct vcpu *vcpu;

 if (vcpuid < 0 || vcpuid >= vm->maxcpus)
  panic("vm_nmi_pending: invalid vcpuid %d", vcpuid);

 vcpu = &vm->vcpu[vcpuid];

 return (vcpu->nmi_pending);
}
