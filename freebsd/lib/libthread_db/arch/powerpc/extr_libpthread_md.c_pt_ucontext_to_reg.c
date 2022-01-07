
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mc_frame; } ;
struct TYPE_4__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct reg {int dummy; } ;
typedef TYPE_2__ mcontext_t ;


 int MIN (int,int) ;
 int memcpy (struct reg*,int ,int ) ;

void
pt_ucontext_to_reg(const ucontext_t *uc, struct reg *r)
{
 const mcontext_t *mc = &uc->uc_mcontext;

 memcpy(r, mc->mc_frame, MIN(sizeof(mc->mc_frame), sizeof(*r)));
}
