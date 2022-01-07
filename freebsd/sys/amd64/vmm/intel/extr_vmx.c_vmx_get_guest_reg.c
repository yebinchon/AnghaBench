
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmxctx {int guest_r15; int guest_r14; int guest_r13; int guest_r12; int guest_r11; int guest_r10; int guest_r9; int guest_r8; int guest_rdi; int guest_rsi; int guest_rbp; int guest_rbx; int guest_rdx; int guest_rcx; int guest_rax; } ;
struct vmx {struct vmxctx* ctx; } ;


 int VMCS_GUEST_RSP ;
 int panic (char*,int) ;
 int vmcs_read (int ) ;

__attribute__((used)) static uint64_t
vmx_get_guest_reg(struct vmx *vmx, int vcpu, int ident)
{
 const struct vmxctx *vmxctx;

 vmxctx = &vmx->ctx[vcpu];

 switch (ident) {
 case 0:
  return (vmxctx->guest_rax);
 case 1:
  return (vmxctx->guest_rcx);
 case 2:
  return (vmxctx->guest_rdx);
 case 3:
  return (vmxctx->guest_rbx);
 case 4:
  return (vmcs_read(VMCS_GUEST_RSP));
 case 5:
  return (vmxctx->guest_rbp);
 case 6:
  return (vmxctx->guest_rsi);
 case 7:
  return (vmxctx->guest_rdi);
 case 8:
  return (vmxctx->guest_r8);
 case 9:
  return (vmxctx->guest_r9);
 case 10:
  return (vmxctx->guest_r10);
 case 11:
  return (vmxctx->guest_r11);
 case 12:
  return (vmxctx->guest_r12);
 case 13:
  return (vmxctx->guest_r13);
 case 14:
  return (vmxctx->guest_r14);
 case 15:
  return (vmxctx->guest_r15);
 default:
  panic("invalid vmx register %d", ident);
 }
}
