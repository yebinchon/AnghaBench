
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmx {int vm; } ;


 int VCPU_CTR0 (int ,int,char*) ;
 int VMCS_GUEST_INTERRUPTIBILITY ;
 int VMCS_INTERRUPTIBILITY_NMI_BLOCKING ;
 int vmcs_read (int ) ;
 int vmcs_write (int ,int ) ;

__attribute__((used)) static void
vmx_restore_nmi_blocking(struct vmx *vmx, int vcpuid)
{
 uint32_t gi;

 VCPU_CTR0(vmx->vm, vcpuid, "Restore Virtual-NMI blocking");
 gi = vmcs_read(VMCS_GUEST_INTERRUPTIBILITY);
 gi |= VMCS_INTERRUPTIBILITY_NMI_BLOCKING;
 vmcs_write(VMCS_GUEST_INTERRUPTIBILITY, gi);
}
