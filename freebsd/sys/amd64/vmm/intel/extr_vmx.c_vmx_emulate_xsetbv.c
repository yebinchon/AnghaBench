
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xsave_limits {int xcr0_allowed; int xsave_enabled; } ;
struct vmxctx {scalar_t__ guest_rcx; int guest_rdx; int guest_rax; } ;
struct vmx {int vm; struct vmxctx* ctx; } ;
struct vm_exit {int dummy; } ;


 int CR4_XSAVE ;
 int HANDLED ;
 int VMCS_GUEST_CR4 ;
 int XFEATURE_AVX ;
 int XFEATURE_AVX512 ;
 int XFEATURE_ENABLED_AVX ;
 int XFEATURE_ENABLED_BNDCSR ;
 int XFEATURE_ENABLED_BNDREGS ;
 int XFEATURE_ENABLED_X87 ;
 int load_xcr (int ,int) ;
 int vm_inject_gp (int ,int) ;
 int vm_inject_ud (int ,int) ;
 int vmcs_read (int ) ;
 struct xsave_limits* vmm_get_xsave_limits () ;

__attribute__((used)) static int
vmx_emulate_xsetbv(struct vmx *vmx, int vcpu, struct vm_exit *vmexit)
{
 struct vmxctx *vmxctx;
 uint64_t xcrval;
 const struct xsave_limits *limits;

 vmxctx = &vmx->ctx[vcpu];
 limits = vmm_get_xsave_limits();
 if (vmxctx->guest_rcx != 0) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }


 if (!limits->xsave_enabled || !(vmcs_read(VMCS_GUEST_CR4) & CR4_XSAVE)) {
  vm_inject_ud(vmx->vm, vcpu);
  return (HANDLED);
 }

 xcrval = vmxctx->guest_rdx << 32 | (vmxctx->guest_rax & 0xffffffff);
 if ((xcrval & ~limits->xcr0_allowed) != 0) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }

 if (!(xcrval & XFEATURE_ENABLED_X87)) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }


 if (xcrval & XFEATURE_ENABLED_AVX &&
     (xcrval & XFEATURE_AVX) != XFEATURE_AVX) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }





 if (xcrval & XFEATURE_AVX512 &&
     (xcrval & (XFEATURE_AVX512 | XFEATURE_AVX)) !=
     (XFEATURE_AVX512 | XFEATURE_AVX)) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }





 if (((xcrval & XFEATURE_ENABLED_BNDREGS) != 0) !=
     ((xcrval & XFEATURE_ENABLED_BNDCSR) != 0)) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }






 load_xcr(0, xcrval);
 return (HANDLED);
}
