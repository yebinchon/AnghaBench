
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_regctx {int sctx_dr3; int sctx_dr2; int sctx_dr1; int sctx_dr0; int sctx_r15; int sctx_r14; int sctx_r13; int sctx_r12; int sctx_r11; int sctx_r10; int sctx_r9; int sctx_r8; int sctx_rbp; int sctx_rsi; int sctx_rdi; int sctx_rdx; int sctx_rcx; int sctx_rbx; } ;
typedef int register_t ;
__attribute__((used)) static register_t *
swctx_regptr(struct svm_regctx *regctx, int reg)
{

 switch (reg) {
 case 132:
  return (&regctx->sctx_rbx);
 case 131:
  return (&regctx->sctx_rcx);
 case 129:
  return (&regctx->sctx_rdx);
 case 130:
  return (&regctx->sctx_rdi);
 case 128:
  return (&regctx->sctx_rsi);
 case 133:
  return (&regctx->sctx_rbp);
 case 135:
  return (&regctx->sctx_r8);
 case 134:
  return (&regctx->sctx_r9);
 case 141:
  return (&regctx->sctx_r10);
 case 140:
  return (&regctx->sctx_r11);
 case 139:
  return (&regctx->sctx_r12);
 case 138:
  return (&regctx->sctx_r13);
 case 137:
  return (&regctx->sctx_r14);
 case 136:
  return (&regctx->sctx_r15);
 case 145:
  return (&regctx->sctx_dr0);
 case 144:
  return (&regctx->sctx_dr1);
 case 143:
  return (&regctx->sctx_dr2);
 case 142:
  return (&regctx->sctx_dr3);
 default:
  return (((void*)0));
 }
}
