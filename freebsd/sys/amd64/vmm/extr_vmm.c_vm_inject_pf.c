
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm {int dummy; } ;


 int IDT_PF ;
 int KASSERT (int,char*) ;
 int VCPU_CTR2 (struct vm*,int,char*,int,int ) ;
 int VM_REG_GUEST_CR2 ;
 int vm_inject_fault (struct vm*,int,int ,int,int) ;
 int vm_set_register (struct vm*,int,int ,int ) ;

void
vm_inject_pf(void *vmarg, int vcpuid, int error_code, uint64_t cr2)
{
 struct vm *vm;
 int error;

 vm = vmarg;
 VCPU_CTR2(vm, vcpuid, "Injecting page fault: error_code %#x, cr2 %#lx",
     error_code, cr2);

 error = vm_set_register(vm, vcpuid, VM_REG_GUEST_CR2, cr2);
 KASSERT(error == 0, ("vm_set_register(cr2) error %d", error));

 vm_inject_fault(vm, vcpuid, IDT_PF, 1, error_code);
}
