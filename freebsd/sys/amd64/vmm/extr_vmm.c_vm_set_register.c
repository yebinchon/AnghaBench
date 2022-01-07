
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm {int maxcpus; struct vcpu* vcpu; int cookie; } ;
struct vcpu {int nextrip; } ;


 int EINVAL ;
 int VCPU_CTR1 (struct vm*,int,char*,int ) ;
 int VMSETREG (int ,int,int,int ) ;
 int VM_REG_GUEST_RIP ;
 int VM_REG_LAST ;

int
vm_set_register(struct vm *vm, int vcpuid, int reg, uint64_t val)
{
 struct vcpu *vcpu;
 int error;

 if (vcpuid < 0 || vcpuid >= vm->maxcpus)
  return (EINVAL);

 if (reg >= VM_REG_LAST)
  return (EINVAL);

 error = VMSETREG(vm->cookie, vcpuid, reg, val);
 if (error || reg != VM_REG_GUEST_RIP)
  return (error);


 VCPU_CTR1(vm, vcpuid, "Setting nextrip to %#lx", val);
 vcpu = &vm->vcpu[vcpuid];
 vcpu->nextrip = val;
 return (0);
}
