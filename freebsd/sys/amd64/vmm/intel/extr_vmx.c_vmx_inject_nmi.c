
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmx {int vm; } ;


 int IDT_NMI ;
 int KASSERT (int,char*) ;
 int NMI_BLOCKING ;
 int VCPU_CTR0 (int ,int,char*) ;
 int VMCS_ENTRY_INTR_INFO ;
 int VMCS_GUEST_INTERRUPTIBILITY ;
 int VMCS_INTR_T_NMI ;
 int VMCS_INTR_VALID ;
 int vm_nmi_clear (int ,int) ;
 int vmcs_read (int ) ;
 int vmcs_write (int ,int) ;

__attribute__((used)) static void
vmx_inject_nmi(struct vmx *vmx, int vcpu)
{
 uint32_t gi, info;

 gi = vmcs_read(VMCS_GUEST_INTERRUPTIBILITY);
 KASSERT((gi & NMI_BLOCKING) == 0, ("vmx_inject_nmi: invalid guest "
     "interruptibility-state %#x", gi));

 info = vmcs_read(VMCS_ENTRY_INTR_INFO);
 KASSERT((info & VMCS_INTR_VALID) == 0, ("vmx_inject_nmi: invalid "
     "VM-entry interruption information %#x", info));





 info = IDT_NMI | VMCS_INTR_T_NMI | VMCS_INTR_VALID;
 vmcs_write(VMCS_ENTRY_INTR_INFO, info);

 VCPU_CTR0(vmx->vm, vcpu, "Injecting vNMI");


 vm_nmi_clear(vmx->vm, vcpu);
}
