
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vmx {int vm; struct vmcs* vmcs; } ;
struct vmcs {int dummy; } ;


 int EINVAL ;
 scalar_t__ HWINTR_BLOCKING ;
 int VCPU_CTR2 (int ,int,char*,scalar_t__,char*) ;
 int VMCS_GUEST_INTERRUPTIBILITY ;
 int VMCS_IDENT (int ) ;
 int vmcs_getreg (struct vmcs*,int,int,scalar_t__*) ;
 int vmcs_setreg (struct vmcs*,int,int,scalar_t__) ;

__attribute__((used)) static int
vmx_modify_intr_shadow(struct vmx *vmx, int vcpu, int running, uint64_t val)
{
 struct vmcs *vmcs;
 uint64_t gi;
 int error, ident;




 if (val) {
  error = EINVAL;
  goto done;
 }

 vmcs = &vmx->vmcs[vcpu];
 ident = VMCS_IDENT(VMCS_GUEST_INTERRUPTIBILITY);
 error = vmcs_getreg(vmcs, running, ident, &gi);
 if (error == 0) {
  gi &= ~HWINTR_BLOCKING;
  error = vmcs_setreg(vmcs, running, ident, gi);
 }
done:
 VCPU_CTR2(vmx->vm, vcpu, "Setting intr_shadow to %#lx %s", val,
     error ? "failed" : "succeeded");
 return (error);
}
