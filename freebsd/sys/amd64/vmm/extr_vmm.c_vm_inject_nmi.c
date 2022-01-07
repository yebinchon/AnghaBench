
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; struct vcpu* vcpu; } ;
struct vcpu {int nmi_pending; } ;


 int EINVAL ;
 int vcpu_notify_event (struct vm*,int,int) ;

int
vm_inject_nmi(struct vm *vm, int vcpuid)
{
 struct vcpu *vcpu;

 if (vcpuid < 0 || vcpuid >= vm->maxcpus)
  return (EINVAL);

 vcpu = &vm->vcpu[vcpuid];

 vcpu->nmi_pending = 1;
 vcpu_notify_event(vm, vcpuid, 0);
 return (0);
}
