
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vcpu* vcpu; } ;
struct vcpu {int dummy; } ;


 int vcpu_lock (struct vcpu*) ;
 int vcpu_notify_event_locked (struct vcpu*,int) ;
 int vcpu_unlock (struct vcpu*) ;

void
vcpu_notify_event(struct vm *vm, int vcpuid, bool lapic_intr)
{
 struct vcpu *vcpu = &vm->vcpu[vcpuid];

 vcpu_lock(vcpu);
 vcpu_notify_event_locked(vcpu, lapic_intr);
 vcpu_unlock(vcpu);
}
