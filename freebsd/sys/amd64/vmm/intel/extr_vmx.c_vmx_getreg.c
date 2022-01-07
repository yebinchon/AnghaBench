
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmx {int * vmcs; int * ctx; int vm; } ;


 int VM_REG_GUEST_INTR_SHADOW ;
 int curcpu ;
 int panic (char*,int ,int) ;
 int vcpu_is_running (int ,int,int*) ;
 int vm_name (int ) ;
 int vmcs_getreg (int *,int,int,int *) ;
 int vmx_get_intr_shadow (struct vmx*,int,int,int *) ;
 scalar_t__ vmxctx_getreg (int *,int,int *) ;

__attribute__((used)) static int
vmx_getreg(void *arg, int vcpu, int reg, uint64_t *retval)
{
 int running, hostcpu;
 struct vmx *vmx = arg;

 running = vcpu_is_running(vmx->vm, vcpu, &hostcpu);
 if (running && hostcpu != curcpu)
  panic("vmx_getreg: %s%d is running", vm_name(vmx->vm), vcpu);

 if (reg == VM_REG_GUEST_INTR_SHADOW)
  return (vmx_get_intr_shadow(vmx, vcpu, running, retval));

 if (vmxctx_getreg(&vmx->ctx[vcpu], reg, retval) == 0)
  return (0);

 return (vmcs_getreg(&vmx->vmcs[vcpu], running, reg, retval));
}
