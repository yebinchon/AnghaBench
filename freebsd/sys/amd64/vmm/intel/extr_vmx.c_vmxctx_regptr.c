
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxctx {int guest_dr6; int guest_dr3; int guest_dr2; int guest_dr1; int guest_dr0; int guest_cr2; int guest_r15; int guest_r14; int guest_r13; int guest_r12; int guest_r11; int guest_r10; int guest_r9; int guest_r8; int guest_rbp; int guest_rdi; int guest_rsi; int guest_rdx; int guest_rcx; int guest_rbx; int guest_rax; } ;
typedef int register_t ;
__attribute__((used)) static register_t *
vmxctx_regptr(struct vmxctx *vmxctx, int reg)
{

 switch (reg) {
 case 134:
  return (&vmxctx->guest_rax);
 case 132:
  return (&vmxctx->guest_rbx);
 case 131:
  return (&vmxctx->guest_rcx);
 case 129:
  return (&vmxctx->guest_rdx);
 case 128:
  return (&vmxctx->guest_rsi);
 case 130:
  return (&vmxctx->guest_rdi);
 case 133:
  return (&vmxctx->guest_rbp);
 case 136:
  return (&vmxctx->guest_r8);
 case 135:
  return (&vmxctx->guest_r9);
 case 142:
  return (&vmxctx->guest_r10);
 case 141:
  return (&vmxctx->guest_r11);
 case 140:
  return (&vmxctx->guest_r12);
 case 139:
  return (&vmxctx->guest_r13);
 case 138:
  return (&vmxctx->guest_r14);
 case 137:
  return (&vmxctx->guest_r15);
 case 148:
  return (&vmxctx->guest_cr2);
 case 147:
  return (&vmxctx->guest_dr0);
 case 146:
  return (&vmxctx->guest_dr1);
 case 145:
  return (&vmxctx->guest_dr2);
 case 144:
  return (&vmxctx->guest_dr3);
 case 143:
  return (&vmxctx->guest_dr6);
 default:
  break;
 }
 return (((void*)0));
}
