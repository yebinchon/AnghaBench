
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {int totalcount; int linecount; int lcontinue; } ;
typedef TYPE_1__ VI_PRIVATE ;
struct TYPE_29__ {int e_flno; int e_tlno; int e_event; } ;
struct TYPE_28__ {struct TYPE_28__* buf; int len; int mtype; } ;
struct TYPE_27__ {int rows; int (* scr_move ) (TYPE_2__*,size_t,size_t) ;int msgq; int (* scr_msg ) (TYPE_2__*,int ,TYPE_3__*,int ) ;int lno; int (* scr_bell ) (TYPE_2__*) ;int (* scr_cursor ) (TYPE_2__*,size_t*,size_t*) ;struct TYPE_27__* gp; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ MSGS ;
typedef TYPE_2__ GS ;
typedef TYPE_5__ EVENT ;


 int E_REPAINT ;
 int F_CLR (TYPE_2__*,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_1__*,int ) ;
 int G_BELLSCHED ;
 int MSTAT_TRUNCATE ;
 int SCROLL_W ;
 int SC_SCR_VI ;
 int SC_STATUS ;
 int SLIST_EMPTY (int ) ;
 TYPE_3__* SLIST_FIRST (int ) ;
 int SLIST_REMOVE_HEAD (int ,int ) ;
 TYPE_1__* VIP (TYPE_2__*) ;
 int VIP_CUR_INVALID ;
 int VIP_S_MODELINE ;
 int free (TYPE_3__*) ;
 int mod_rpt (TYPE_2__*) ;
 int msgq_status (TYPE_2__*,int ,int ) ;
 int q ;
 int stub1 (TYPE_2__*,size_t*,size_t*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*,int ,TYPE_3__*,int ) ;
 int stub4 (TYPE_2__*,size_t,size_t) ;
 scalar_t__ vs_refresh (TYPE_2__*,int) ;
 int vs_repaint (TYPE_2__*,TYPE_5__*) ;
 int vs_scroll (TYPE_2__*,int *,int ) ;

int
vs_resolve(SCR *sp, SCR *csp, int forcewait)
{
 EVENT ev;
 GS *gp;
 MSGS *mp;
 VI_PRIVATE *vip;
 size_t oldy, oldx;
 int redraw;
 gp = sp->gp;
 vip = VIP(sp);
 if (csp == ((void*)0))
  csp = sp;


 (void)gp->scr_cursor(csp, &oldy, &oldx);


 if (F_ISSET(gp, G_BELLSCHED)) {
  F_CLR(gp, G_BELLSCHED);
  (void)gp->scr_bell(sp);
 }


 if (F_ISSET(sp, SC_STATUS)) {
  F_CLR(sp, SC_STATUS);
  msgq_status(sp, sp->lno, MSTAT_TRUNCATE);
 }


 mod_rpt(sp);







 if (!SLIST_EMPTY(gp->msgq)) {
  if (!F_ISSET(sp, SC_SCR_VI) && vs_refresh(sp, 1))
   return (1);
  while ((mp = SLIST_FIRST(gp->msgq)) != ((void*)0)) {
   gp->scr_msg(sp, mp->mtype, mp->buf, mp->len);
   SLIST_REMOVE_HEAD(gp->msgq, q);
   free(mp->buf);
   free(mp);
  }
  F_SET(vip, VIP_CUR_INVALID);
 }

 switch (vip->totalcount) {
 case 0:
  redraw = 0;
  break;
 case 1:




  if (forcewait)
   vs_scroll(sp, ((void*)0), SCROLL_W);
  else
   F_SET(vip, VIP_S_MODELINE);

  redraw = 0;
  break;
 default:




  vs_scroll(sp, ((void*)0), SCROLL_W);

  ev.e_event = E_REPAINT;
  ev.e_flno = vip->totalcount >=
      sp->rows ? 1 : sp->rows - vip->totalcount;
  ev.e_tlno = sp->rows;

  redraw = 1;
  break;
 }


 vip->linecount = vip->lcontinue = vip->totalcount = 0;


 if (redraw)
  (void)vs_repaint(sp, &ev);


 (void)gp->scr_move(csp, oldy, oldx);

 return (0);
}
