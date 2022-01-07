
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; struct vcpu* vcpu; } ;
struct vcpu {int state; int hostcpu; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int panic (char*,int) ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_unlock (struct vcpu*) ;

enum vcpu_state
vcpu_get_state(struct vm *vm, int vcpuid, int *hostcpu)
{
 struct vcpu *vcpu;
 enum vcpu_state state;

 if (vcpuid < 0 || vcpuid >= vm->maxcpus)
  panic("vm_get_run_state: invalid vcpuid %d", vcpuid);

 vcpu = &vm->vcpu[vcpuid];

 vcpu_lock(vcpu);
 state = vcpu->state;
 if (hostcpu != ((void*)0))
  *hostcpu = vcpu->hostcpu;
 vcpu_unlock(vcpu);

 return (state);
}
