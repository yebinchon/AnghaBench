
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mc_gs; int mc_fs; } ;
struct TYPE_5__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct reg {int r_gs; int r_fs; } ;


 int memcpy (int *,int *,int) ;

void
pt_reg_to_ucontext(const struct reg *r, ucontext_t *uc)
{
 memcpy(&uc->uc_mcontext.mc_fs, &r->r_fs, 18*4);
 uc->uc_mcontext.mc_gs = r->r_gs;
}
