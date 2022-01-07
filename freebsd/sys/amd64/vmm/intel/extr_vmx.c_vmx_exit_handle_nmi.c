
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vmx {int vm; } ;
struct TYPE_3__ {scalar_t__ exit_reason; } ;
struct TYPE_4__ {TYPE_1__ vmx; } ;
struct vm_exit {TYPE_2__ u; } ;


 scalar_t__ EXIT_REASON_EXCEPTION ;
 int IDT_NMI ;
 int KASSERT (int,char*) ;
 int PSL_I ;
 int VCPU_CTR0 (int ,int,char*) ;
 int VMCS_EXIT_INTR_INFO ;
 int VMCS_INTR_T_MASK ;
 int VMCS_INTR_T_NMI ;
 int VMCS_INTR_VALID ;
 int read_rflags () ;
 int vmcs_read (int ) ;

__attribute__((used)) static __inline void
vmx_exit_handle_nmi(struct vmx *vmx, int vcpuid, struct vm_exit *vmexit)
{
 uint32_t intr_info;

 KASSERT((read_rflags() & PSL_I) == 0, ("interrupts enabled"));

 if (vmexit->u.vmx.exit_reason != EXIT_REASON_EXCEPTION)
  return;

 intr_info = vmcs_read(VMCS_EXIT_INTR_INFO);
 KASSERT((intr_info & VMCS_INTR_VALID) != 0,
     ("VM exit interruption info invalid: %#x", intr_info));

 if ((intr_info & VMCS_INTR_T_MASK) == VMCS_INTR_T_NMI) {
  KASSERT((intr_info & 0xff) == IDT_NMI, ("VM exit due "
      "to NMI has invalid vector: %#x", intr_info));
  VCPU_CTR0(vmx->vm, vcpuid, "Vectoring to NMI handler");
  __asm __volatile("int $2");
 }
}
