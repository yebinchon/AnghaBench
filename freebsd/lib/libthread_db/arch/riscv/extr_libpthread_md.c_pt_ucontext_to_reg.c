
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
pt_ucontext_to_reg(const ucontext_t *uc, struct reg *r)
{
 const mcontext_t *mc;

 mc = &uc->uc_mcontext;

 memcpy(r->t, mc->mc_gpregs.gp_t, sizeof(mc->mc_gpregs.gp_t));
 memcpy(r->s, mc->mc_gpregs.gp_s, sizeof(mc->mc_gpregs.gp_s));
 memcpy(r->a, mc->mc_gpregs.gp_a, sizeof(mc->mc_gpregs.gp_a));
 r->ra = mc->mc_gpregs.gp_ra;
 r->sp = mc->mc_gpregs.gp_sp;
 r->gp = mc->mc_gpregs.gp_gp;
 r->tp = mc->mc_gpregs.gp_tp;
 r->sepc = mc->mc_gpregs.gp_sepc;
 r->sstatus = mc->mc_gpregs.gp_sstatus;
}
