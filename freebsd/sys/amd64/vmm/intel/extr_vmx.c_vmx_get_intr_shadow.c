
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmx {int * vmcs; } ;


 int HWINTR_BLOCKING ;
 int VMCS_GUEST_INTERRUPTIBILITY ;
 int VMCS_IDENT (int ) ;
 int vmcs_getreg (int *,int,int ,int*) ;

__attribute__((used)) static int
vmx_get_intr_shadow(struct vmx *vmx, int vcpu, int running, uint64_t *retval)
{
 uint64_t gi;
 int error;

 error = vmcs_getreg(&vmx->vmcs[vcpu], running,
     VMCS_IDENT(VMCS_GUEST_INTERRUPTIBILITY), &gi);
 *retval = (gi & HWINTR_BLOCKING) ? 1 : 0;
 return (error);
}
