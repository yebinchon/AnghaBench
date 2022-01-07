
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vm_paging_mode { ____Placeholder_vm_paging_mode } vm_paging_mode ;


 int CR0_PG ;
 int CR4_PAE ;
 int EFER_LME ;
 int PAGING_MODE_32 ;
 int PAGING_MODE_64 ;
 int PAGING_MODE_FLAT ;
 int PAGING_MODE_PAE ;
 int VMCS_GUEST_CR0 ;
 int VMCS_GUEST_CR4 ;
 int VMCS_GUEST_IA32_EFER ;
 int vmcs_read (int ) ;

__attribute__((used)) static enum vm_paging_mode
vmx_paging_mode(void)
{

 if (!(vmcs_read(VMCS_GUEST_CR0) & CR0_PG))
  return (PAGING_MODE_FLAT);
 if (!(vmcs_read(VMCS_GUEST_CR4) & CR4_PAE))
  return (PAGING_MODE_32);
 if (vmcs_read(VMCS_GUEST_IA32_EFER) & EFER_LME)
  return (PAGING_MODE_64);
 else
  return (PAGING_MODE_PAE);
}
