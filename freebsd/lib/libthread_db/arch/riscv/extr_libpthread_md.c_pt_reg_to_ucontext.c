
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gp_sstatus; int gp_sepc; int gp_tp; int gp_gp; int gp_sp; int gp_ra; int gp_a; int gp_s; int gp_t; } ;
struct TYPE_7__ {TYPE_1__ mc_gpregs; } ;
struct TYPE_6__ {TYPE_3__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct reg {int sstatus; int sepc; int tp; int gp; int sp; int ra; int a; int s; int t; } ;
typedef TYPE_3__ mcontext_t ;


 int memcpy (int ,int ,int) ;

void
pt_reg_to_ucontext(const struct reg *r, ucontext_t *uc)
{
 mcontext_t *mc;

 mc = &uc->uc_mcontext;

 memcpy(mc->mc_gpregs.gp_t, r->t, sizeof(mc->mc_gpregs.gp_t));
 memcpy(mc->mc_gpregs.gp_s, r->s, sizeof(mc->mc_gpregs.gp_s));
 memcpy(mc->mc_gpregs.gp_a, r->a, sizeof(mc->mc_gpregs.gp_a));
 mc->mc_gpregs.gp_ra = r->ra;
 mc->mc_gpregs.gp_sp = r->sp;
 mc->mc_gpregs.gp_gp = r->gp;
 mc->mc_gpregs.gp_tp = r->tp;
 mc->mc_gpregs.gp_sepc = r->sepc;
 mc->mc_gpregs.gp_sstatus = r->sstatus;
}
