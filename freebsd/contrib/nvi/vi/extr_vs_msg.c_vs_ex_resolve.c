
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int sw_t ;
struct TYPE_20__ {scalar_t__ lcontinue; int totalcount; int rows; scalar_t__ linecount; TYPE_3__* gp; int mtype; } ;
typedef TYPE_1__ VI_PRIVATE ;
struct TYPE_22__ {int e_flno; int e_tlno; int e_event; } ;
struct TYPE_21__ {int (* scr_attr ) (TYPE_1__*,int ,int) ;scalar_t__ (* scr_screen ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ SCR ;
typedef TYPE_3__ GS ;
typedef TYPE_4__ EVENT ;


 int E_REPAINT ;
 int F_CLR (TYPE_1__*,int) ;
 scalar_t__ F_ISSET (TYPE_1__*,int) ;
 int F_SET (TYPE_1__*,int ) ;
 int INTERRUPTED (TYPE_1__*) ;
 int M_NONE ;
 int SA_ALTERNATE ;
 int SCROLL_W ;
 int SCROLL_W_EX ;
 int SC_EXIT ;
 int SC_EXIT_FORCE ;
 int SC_EX_WAIT_NO ;
 int SC_EX_WAIT_YES ;
 int SC_FSWITCH ;
 int SC_SCR_EXWROTE ;
 int SC_SCR_REDRAW ;
 int SC_SCR_REFORMAT ;
 int SC_SSWITCH ;
 int SC_VI ;
 int * TAILQ_NEXT (TYPE_1__*,int ) ;
 TYPE_1__* VIP (TYPE_1__*) ;
 int VIP_CUR_INVALID ;
 int VIP_N_EX_PAINT ;
 int VIP_N_EX_REDRAW ;
 int q ;
 scalar_t__ stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ,int) ;
 int vs_output (TYPE_1__*,int ,char*,int) ;
 int vs_repaint (TYPE_1__*,TYPE_4__*) ;
 int vs_scroll (TYPE_1__*,int*,int ) ;
 int vs_wait (TYPE_1__*,int*,int ) ;

int
vs_ex_resolve(SCR *sp, int *continuep)
{
 EVENT ev;
 GS *gp;
 VI_PRIVATE *vip;
 sw_t wtype;

 gp = sp->gp;
 vip = VIP(sp);
 *continuep = 0;


 F_SET(vip, VIP_CUR_INVALID);


 if (vip->lcontinue != 0) {
  vs_output(sp, vip->mtype, ".", 1);
  vip->lcontinue = 0;

  vip->mtype = M_NONE;
 }
 if (F_ISSET(sp, SC_SCR_EXWROTE)) {
  if (sp->gp->scr_screen(sp, SC_VI))
   return (1);
 } else
  if (!F_ISSET(sp, SC_EX_WAIT_YES) && vip->totalcount < 2) {
   F_CLR(sp, SC_EX_WAIT_NO);
   return (0);
  }


 F_CLR(sp, SC_EX_WAIT_YES);






 if (!F_ISSET(sp, SC_EX_WAIT_NO) && !INTERRUPTED(sp)) {
  wtype = F_ISSET(sp, SC_EXIT | SC_EXIT_FORCE |
      SC_FSWITCH | SC_SSWITCH) ? SCROLL_W : SCROLL_W_EX;
  if (F_ISSET(sp, SC_SCR_EXWROTE))
   vs_wait(sp, continuep, wtype);
  else
   vs_scroll(sp, continuep, wtype);
  if (*continuep)
   return (0);
 }


 if (F_ISSET(sp, SC_SCR_EXWROTE))
  F_SET(vip, VIP_N_EX_PAINT);





 if (TAILQ_NEXT(sp, q) != ((void*)0))
  F_SET(sp, SC_SCR_REDRAW);


 if (F_ISSET(vip, VIP_N_EX_REDRAW))
  F_SET(sp, SC_SCR_REFORMAT);


 (void)gp->scr_attr(sp, SA_ALTERNATE, 1);





 F_CLR(sp, SC_SCR_EXWROTE | SC_EX_WAIT_NO);
 if (vip->totalcount > 1) {

  ev.e_event = E_REPAINT;
  ev.e_flno = vip->totalcount >=
      sp->rows ? 1 : sp->rows - vip->totalcount;
  ev.e_tlno = sp->rows;


  vip->linecount = vip->lcontinue = vip->totalcount = 0;


  (void)vs_repaint(sp, &ev);
 } else

  vip->linecount = vip->lcontinue = vip->totalcount = 0;

 return (0);
}
