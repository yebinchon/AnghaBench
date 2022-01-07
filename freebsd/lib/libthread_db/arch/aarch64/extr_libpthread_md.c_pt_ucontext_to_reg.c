
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gp_spsr; int gp_elr; int gp_lr; int gp_sp; int gp_x; } ;
struct TYPE_7__ {TYPE_1__ mc_gpregs; } ;
struct TYPE_6__ {TYPE_3__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct reg {int spsr; int elr; int lr; int sp; int x; } ;
typedef TYPE_3__ mcontext_t ;


 int memcpy (int ,int ,int) ;

void
pt_ucontext_to_reg(const ucontext_t *uc, struct reg *r)
{
 const mcontext_t *mc = &uc->uc_mcontext;

 memcpy(r->x, mc->mc_gpregs.gp_x, sizeof(mc->mc_gpregs.gp_x));
 r->sp = mc->mc_gpregs.gp_sp;
 r->lr = mc->mc_gpregs.gp_lr;
 r->elr = mc->mc_gpregs.gp_elr;
 r->spsr = mc->mc_gpregs.gp_spsr;
}
