
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mulhi; int mullo; int mc_pc; int mc_regs; } ;
struct TYPE_5__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct reg {int * r_regs; } ;


 size_t MULHI ;
 size_t MULLO ;
 size_t PC ;
 size_t ZERO ;
 int memcpy (int ,int *,int) ;

void
pt_reg_to_ucontext(const struct reg *r, ucontext_t *uc)
{

 memcpy(uc->uc_mcontext.mc_regs, &r->r_regs[ZERO],
     sizeof(uc->uc_mcontext.mc_regs));
 uc->uc_mcontext.mc_pc = r->r_regs[PC];
 uc->uc_mcontext.mullo = r->r_regs[MULLO];
 uc->uc_mcontext.mulhi = r->r_regs[MULHI];
}
