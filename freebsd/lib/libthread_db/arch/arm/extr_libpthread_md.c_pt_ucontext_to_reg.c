
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * __gregs; } ;
struct TYPE_4__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct reg {int r_cpsr; int r_pc; int r_lr; int r_sp; int * r; } ;
typedef TYPE_2__ mcontext_t ;
typedef int __greg_t ;


 size_t _REG_CPSR ;
 size_t _REG_LR ;
 size_t _REG_PC ;
 size_t _REG_R0 ;
 size_t _REG_R1 ;
 size_t _REG_R10 ;
 size_t _REG_R11 ;
 size_t _REG_R12 ;
 size_t _REG_R2 ;
 size_t _REG_R3 ;
 size_t _REG_R4 ;
 size_t _REG_R5 ;
 size_t _REG_R6 ;
 size_t _REG_R7 ;
 size_t _REG_R8 ;
 size_t _REG_R9 ;
 size_t _REG_SP ;

void
pt_ucontext_to_reg(const ucontext_t *uc, struct reg *r)
{
 const mcontext_t *mc = &uc->uc_mcontext;

 const __greg_t *gr = mc->__gregs;

 r->r[0] = gr[_REG_R0];
 r->r[1] = gr[_REG_R1];
 r->r[2] = gr[_REG_R2];
 r->r[3] = gr[_REG_R3];
 r->r[4] = gr[_REG_R4];
 r->r[5] = gr[_REG_R5];
 r->r[6] = gr[_REG_R6];
 r->r[7] = gr[_REG_R7];
 r->r[8] = gr[_REG_R8];
 r->r[9] = gr[_REG_R9];
 r->r[10] = gr[_REG_R10];
 r->r[11] = gr[_REG_R11];
 r->r[12] = gr[_REG_R12];
 r->r_sp = gr[_REG_SP];
 r->r_lr = gr[_REG_LR];
 r->r_pc = gr[_REG_PC];
 r->r_cpsr = gr[_REG_CPSR];
}
