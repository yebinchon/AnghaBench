
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmx {int dummy; } ;


 int KASSERT (int,char*) ;
 int VMCS_GUEST_INTERRUPTIBILITY ;
 int VMCS_INTERRUPTIBILITY_NMI_BLOCKING ;
 int vmcs_read (int ) ;

__attribute__((used)) static void
vmx_assert_nmi_blocking(struct vmx *vmx, int vcpuid)
{
 uint32_t gi;

 gi = vmcs_read(VMCS_GUEST_INTERRUPTIBILITY);
 KASSERT(gi & VMCS_INTERRUPTIBILITY_NMI_BLOCKING,
     ("NMI blocking is not in effect %#x", gi));
}
