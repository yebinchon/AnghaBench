
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct reg {int dummy; } ;


 int MIN (int,int) ;
 int memcpy (int *,struct reg const*,int ) ;

void
pt_reg_to_ucontext(const struct reg *r, ucontext_t *uc)
{

 memcpy(&uc->uc_mcontext, r, MIN(sizeof(uc->uc_mcontext), sizeof(*r)));
}
