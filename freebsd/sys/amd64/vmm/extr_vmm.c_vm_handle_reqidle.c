
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vcpu* vcpu; } ;
struct vcpu {scalar_t__ reqidle; } ;


 int KASSERT (scalar_t__,char*) ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_unlock (struct vcpu*) ;

__attribute__((used)) static int
vm_handle_reqidle(struct vm *vm, int vcpuid, bool *retu)
{
 struct vcpu *vcpu = &vm->vcpu[vcpuid];

 vcpu_lock(vcpu);
 KASSERT(vcpu->reqidle, ("invalid vcpu reqidle %d", vcpu->reqidle));
 vcpu->reqidle = 0;
 vcpu_unlock(vcpu);
 *retu = 1;
 return (0);
}
