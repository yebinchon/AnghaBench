
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct vmxctx {void* guest_r15; void* guest_r14; void* guest_r13; void* guest_r12; void* guest_r11; void* guest_r10; void* guest_r9; void* guest_r8; void* guest_rdi; void* guest_rsi; void* guest_rbp; void* guest_rbx; void* guest_rdx; void* guest_rcx; void* guest_rax; } ;
struct vmx {struct vmxctx* ctx; } ;


 int VMCS_GUEST_RSP ;
 int panic (char*,int) ;
 int vmcs_write (int ,void*) ;

__attribute__((used)) static void
vmx_set_guest_reg(struct vmx *vmx, int vcpu, int ident, uint64_t regval)
{
 struct vmxctx *vmxctx;

 vmxctx = &vmx->ctx[vcpu];

 switch (ident) {
 case 0:
  vmxctx->guest_rax = regval;
  break;
 case 1:
  vmxctx->guest_rcx = regval;
  break;
 case 2:
  vmxctx->guest_rdx = regval;
  break;
 case 3:
  vmxctx->guest_rbx = regval;
  break;
 case 4:
  vmcs_write(VMCS_GUEST_RSP, regval);
  break;
 case 5:
  vmxctx->guest_rbp = regval;
  break;
 case 6:
  vmxctx->guest_rsi = regval;
  break;
 case 7:
  vmxctx->guest_rdi = regval;
  break;
 case 8:
  vmxctx->guest_r8 = regval;
  break;
 case 9:
  vmxctx->guest_r9 = regval;
  break;
 case 10:
  vmxctx->guest_r10 = regval;
  break;
 case 11:
  vmxctx->guest_r11 = regval;
  break;
 case 12:
  vmxctx->guest_r12 = regval;
  break;
 case 13:
  vmxctx->guest_r13 = regval;
  break;
 case 14:
  vmxctx->guest_r14 = regval;
  break;
 case 15:
  vmxctx->guest_r15 = regval;
  break;
 default:
  panic("invalid vmx register %d", ident);
 }
}
