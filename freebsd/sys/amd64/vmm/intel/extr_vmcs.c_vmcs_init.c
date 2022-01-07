
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;
struct vmcs {int dummy; } ;


 int CR4_VMXE ;
 int VMCLEAR (struct vmcs*) ;
 int VMCS_HOST_CR0 ;
 int VMCS_HOST_CR4 ;
 int VMCS_HOST_CS_SELECTOR ;
 int VMCS_HOST_DS_SELECTOR ;
 int VMCS_HOST_ES_SELECTOR ;
 int VMCS_HOST_FS_BASE ;
 int VMCS_HOST_FS_SELECTOR ;
 int VMCS_HOST_GS_SELECTOR ;
 int VMCS_HOST_IA32_EFER ;
 int VMCS_HOST_IA32_PAT ;
 int VMCS_HOST_IDTR_BASE ;
 int VMCS_HOST_RIP ;
 int VMCS_HOST_SS_SELECTOR ;
 int VMCS_HOST_TR_SELECTOR ;
 int VMCS_LINK_POINTER ;
 int VMPTRLD (struct vmcs*) ;
 scalar_t__ no_flush_rsb ;
 int vmm_get_host_codesel () ;
 int vmm_get_host_cr0 () ;
 int vmm_get_host_cr4 () ;
 int vmm_get_host_datasel () ;
 int vmm_get_host_efer () ;
 int vmm_get_host_fsbase () ;
 int vmm_get_host_idtrbase () ;
 int vmm_get_host_pat () ;
 int vmm_get_host_tsssel () ;
 int vmwrite (int ,int) ;
 scalar_t__ vmx_exit_guest ;
 scalar_t__ vmx_exit_guest_flush_rsb ;

int
vmcs_init(struct vmcs *vmcs)
{
 int error, codesel, datasel, tsssel;
 u_long cr0, cr4, efer;
 uint64_t pat, fsbase, idtrbase;

 codesel = vmm_get_host_codesel();
 datasel = vmm_get_host_datasel();
 tsssel = vmm_get_host_tsssel();




 VMPTRLD(vmcs);




 pat = vmm_get_host_pat();
 if ((error = vmwrite(VMCS_HOST_IA32_PAT, pat)) != 0)
  goto done;


 efer = vmm_get_host_efer();
 if ((error = vmwrite(VMCS_HOST_IA32_EFER, efer)) != 0)
  goto done;



 cr0 = vmm_get_host_cr0();
 if ((error = vmwrite(VMCS_HOST_CR0, cr0)) != 0)
  goto done;

 cr4 = vmm_get_host_cr4() | CR4_VMXE;
 if ((error = vmwrite(VMCS_HOST_CR4, cr4)) != 0)
  goto done;


 if ((error = vmwrite(VMCS_HOST_ES_SELECTOR, datasel)) != 0)
  goto done;

 if ((error = vmwrite(VMCS_HOST_CS_SELECTOR, codesel)) != 0)
  goto done;

 if ((error = vmwrite(VMCS_HOST_SS_SELECTOR, datasel)) != 0)
  goto done;

 if ((error = vmwrite(VMCS_HOST_DS_SELECTOR, datasel)) != 0)
  goto done;

 if ((error = vmwrite(VMCS_HOST_FS_SELECTOR, datasel)) != 0)
  goto done;

 if ((error = vmwrite(VMCS_HOST_GS_SELECTOR, datasel)) != 0)
  goto done;

 if ((error = vmwrite(VMCS_HOST_TR_SELECTOR, tsssel)) != 0)
  goto done;







 fsbase = vmm_get_host_fsbase();
 if ((error = vmwrite(VMCS_HOST_FS_BASE, fsbase)) != 0)
  goto done;

 idtrbase = vmm_get_host_idtrbase();
 if ((error = vmwrite(VMCS_HOST_IDTR_BASE, idtrbase)) != 0)
  goto done;


 if (no_flush_rsb) {
  if ((error = vmwrite(VMCS_HOST_RIP,
      (u_long)vmx_exit_guest)) != 0)
   goto done;
 } else {
  if ((error = vmwrite(VMCS_HOST_RIP,
      (u_long)vmx_exit_guest_flush_rsb)) != 0)
   goto done;
 }


 if ((error = vmwrite(VMCS_LINK_POINTER, ~0)) != 0)
  goto done;
done:
 VMCLEAR(vmcs);
 return (error);
}
