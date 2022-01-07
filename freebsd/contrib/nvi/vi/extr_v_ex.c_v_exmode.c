
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_11__ {int (* scr_attr ) (TYPE_1__*,int ,int ) ;scalar_t__ (* scr_screen ) (TYPE_1__*,int ) ;} ;
struct TYPE_10__ {struct TYPE_10__* frp; int cno; int lno; TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;


 int FR_CURSORSET ;
 int F_CLR (TYPE_1__*,int) ;
 int F_SET (TYPE_1__*,int ) ;
 int M_ERR ;
 int SA_ALTERNATE ;
 int SC_EX ;
 int SC_SCR_VI ;
 int SC_VI ;
 int ex_puts (TYPE_1__*,char*) ;
 int msgq (TYPE_1__*,int ,char*) ;
 scalar_t__ stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ,int ) ;

int
v_exmode(SCR *sp, VICMD *vp)
{
 GS *gp;

 gp = sp->gp;


 if (gp->scr_screen(sp, SC_EX)) {
  msgq(sp, M_ERR,
      "207|The Q command requires the ex terminal interface");
  return (1);
 }
 (void)gp->scr_attr(sp, SA_ALTERNATE, 0);


 sp->frp->lno = sp->lno;
 sp->frp->cno = sp->cno;
 F_SET(sp->frp, FR_CURSORSET);


 F_CLR(sp, SC_VI | SC_SCR_VI);
 F_SET(sp, SC_EX);


 (void)ex_puts(sp, "\n");

 return (0);
}
