
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mc_fpregs; } ;
struct TYPE_5__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct fpreg {int r_regs; } ;


 int memcpy (int ,int ,int) ;

void
pt_ucontext_to_fpreg(const ucontext_t *uc, struct fpreg *r)
{

 memcpy(r->r_regs, uc->uc_mcontext.mc_fpregs,
     sizeof(uc->uc_mcontext.mc_fpregs));
}
