
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; struct vcpu* vcpu; } ;
struct vcpu {int dummy; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int panic (char*,int) ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_set_state_locked (struct vm*,int,int,int) ;
 int vcpu_unlock (struct vcpu*) ;

int
vcpu_set_state(struct vm *vm, int vcpuid, enum vcpu_state newstate,
    bool from_idle)
{
 int error;
 struct vcpu *vcpu;

 if (vcpuid < 0 || vcpuid >= vm->maxcpus)
  panic("vm_set_run_state: invalid vcpuid %d", vcpuid);

 vcpu = &vm->vcpu[vcpuid];

 vcpu_lock(vcpu);
 error = vcpu_set_state_locked(vm, vcpuid, newstate, from_idle);
 vcpu_unlock(vcpu);

 return (error);
}
