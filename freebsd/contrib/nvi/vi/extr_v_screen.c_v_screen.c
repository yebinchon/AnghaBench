
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_11__ {struct TYPE_11__* nextdisp; TYPE_1__* gp; } ;
struct TYPE_10__ {int dq; } ;
typedef TYPE_2__ SCR ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int) ;
 int M_ERR ;
 int SC_COMEDIT ;
 int SC_SSWITCH ;
 int SC_STATUS ;
 TYPE_2__* TAILQ_FIRST (int ) ;
 TYPE_2__* TAILQ_NEXT (TYPE_2__*,int ) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int q ;

int
v_screen(SCR *sp, VICMD *vp)
{






 if (F_ISSET(sp, SC_COMEDIT)) {
  msgq(sp, M_ERR,
      "308|Enter <CR> to execute a command, :q to exit");
  return (1);
 }





 if (TAILQ_NEXT(sp, q) != ((void*)0))
  sp->nextdisp = TAILQ_NEXT(sp, q);
 else if (TAILQ_FIRST(sp->gp->dq) == sp) {
  msgq(sp, M_ERR, "187|No other screen to switch to");
  return (1);
 } else
  sp->nextdisp = TAILQ_FIRST(sp->gp->dq);

 F_SET(sp->nextdisp, SC_STATUS);
 F_SET(sp, SC_SSWITCH | SC_STATUS);
 return (0);
}
