
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ obp_len; int obp; } ;
struct TYPE_9__ {TYPE_1__* gp; } ;
struct TYPE_8__ {int (* scr_msg ) (TYPE_2__*,int ,int ,scalar_t__) ;} ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EX_PRIVATE ;


 TYPE_3__* EXP (TYPE_2__*) ;
 int M_NONE ;
 int stub1 (TYPE_2__*,int ,int ,scalar_t__) ;

int
ex_fflush(SCR *sp)
{
 EX_PRIVATE *exp;

 exp = EXP(sp);

 if (exp->obp_len != 0) {
  sp->gp->scr_msg(sp, M_NONE, exp->obp, exp->obp_len);
  exp->obp_len = 0;
 }
 return (0);
}
