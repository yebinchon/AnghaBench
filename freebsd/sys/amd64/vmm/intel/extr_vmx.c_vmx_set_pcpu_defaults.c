
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxstate {scalar_t__ lastcpu; } ;
struct vmx {int vm; struct vmxstate* state; } ;
typedef int pmap_t ;


 int VCPU_MIGRATIONS ;
 int VMCS_HOST_GDTR_BASE ;
 int VMCS_HOST_GS_BASE ;
 int VMCS_HOST_TR_BASE ;
 scalar_t__ curcpu ;
 int vmcs_write (int ,int ) ;
 int vmm_get_host_gdtrbase () ;
 int vmm_get_host_gsbase () ;
 int vmm_get_host_trbase () ;
 int vmm_stat_incr (int ,int,int ,int) ;
 int vmx_invvpid (struct vmx*,int,int ,int) ;

__attribute__((used)) static void
vmx_set_pcpu_defaults(struct vmx *vmx, int vcpu, pmap_t pmap)
{
 struct vmxstate *vmxstate;

 vmxstate = &vmx->state[vcpu];
 if (vmxstate->lastcpu == curcpu)
  return;

 vmxstate->lastcpu = curcpu;

 vmm_stat_incr(vmx->vm, vcpu, VCPU_MIGRATIONS, 1);

 vmcs_write(VMCS_HOST_TR_BASE, vmm_get_host_trbase());
 vmcs_write(VMCS_HOST_GDTR_BASE, vmm_get_host_gdtrbase());
 vmcs_write(VMCS_HOST_GS_BASE, vmm_get_host_gsbase());
 vmx_invvpid(vmx, vcpu, pmap, 1);
}
