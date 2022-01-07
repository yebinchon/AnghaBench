
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int ;
typedef scalar_t__ recno_t ;
struct TYPE_33__ {int cno; int lno; } ;
struct TYPE_30__ {TYPE_5__ m_final; TYPE_5__ m_start; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_34__ {scalar_t__ lno; } ;
struct TYPE_32__ {TYPE_1__* gp; int cno; int lno; } ;
struct TYPE_31__ {int cno; char* lb; scalar_t__ lno; } ;
struct TYPE_29__ {int (* scr_refresh ) (TYPE_4__*,int ) ;} ;
typedef TYPE_3__ TEXT ;
typedef TYPE_4__ SCR ;
typedef TYPE_5__ MARK ;


 int FL_CLR (int ,int ) ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int FL_SET (int ,int ) ;
 int F_CLR (TYPE_4__*,int) ;
 int F_SET (TYPE_4__*,int) ;
 scalar_t__ IS_ONELINE (TYPE_4__*) ;
 int IS_RESTART ;
 int IS_RUNNING ;
 scalar_t__ IS_SHELLMETA (TYPE_4__*,char) ;
 int KEYS_WAITING (TYPE_4__*) ;
 int SC_TINPUT ;
 int SC_TINPUT_INFO ;
 int SEARCH_INCR ;
 int SEARCH_SET ;
 TYPE_8__* TMAP ;
 TYPE_4__* VIP (TYPE_4__*) ;
 int VIP_S_MODELINE ;
 int b_search (TYPE_4__*,TYPE_5__*,TYPE_5__*,char*,size_t,int *,int) ;
 int f_search (TYPE_4__*,TYPE_5__*,TYPE_5__*,char*,size_t,int *,int) ;
 int stub1 (TYPE_4__*,int ) ;
 scalar_t__ txt_map_end (TYPE_4__*) ;
 scalar_t__ txt_map_init (TYPE_4__*) ;
 scalar_t__ vs_line (TYPE_4__*,TYPE_8__*,int *,int *) ;
 scalar_t__ vs_refresh (TYPE_4__*,int ) ;

__attribute__((used)) static int
txt_isrch(SCR *sp, VICMD *vp, TEXT *tp, u_int8_t *is_flagsp)
{
 MARK start;
 recno_t lno;
 u_int sf;


 if (IS_ONELINE(sp)) {
  FL_CLR(*is_flagsp, IS_RUNNING);
  return (0);
 }





 if (tp->cno <= 1) {
  vp->m_final = vp->m_start;
  return (0);
 }





 if (tp->lb[tp->cno - 1] == '\\' &&
     (tp->cno == 2 || tp->lb[tp->cno - 2] != '\\'))
  return (0);





 if (IS_SHELLMETA(sp, tp->lb[tp->cno - 1]) &&
     (tp->cno == 2 || tp->lb[tp->cno - 2] != '\\'))
  vp->m_final = vp->m_start;
 if (tp->lb[0] == tp->lb[tp->cno - 1] &&
     (tp->cno == 2 || tp->lb[tp->cno - 2] != '\\')) {
  vp->m_final = vp->m_start;
  FL_CLR(*is_flagsp, IS_RUNNING);
  return (0);
 }





 lno = tp->lno;
 F_SET(VIP(sp), VIP_S_MODELINE);
 F_CLR(sp, SC_TINPUT | SC_TINPUT_INFO);
 if (txt_map_end(sp))
  return (1);
 if (FL_ISSET(*is_flagsp, IS_RESTART)) {
  start = vp->m_start;
  sf = SEARCH_SET;
 } else {
  start = vp->m_final;
  sf = SEARCH_INCR | SEARCH_SET;
 }

 if (tp->lb[0] == '/' ?
     !f_search(sp,
     &start, &vp->m_final, tp->lb + 1, tp->cno - 1, ((void*)0), sf) :
     !b_search(sp,
     &start, &vp->m_final, tp->lb + 1, tp->cno - 1, ((void*)0), sf)) {
  sp->lno = vp->m_final.lno;
  sp->cno = vp->m_final.cno;
  FL_CLR(*is_flagsp, IS_RESTART);

  if (!KEYS_WAITING(sp) && vs_refresh(sp, 0))
   return (1);
 } else
  FL_SET(*is_flagsp, IS_RESTART);


 if (txt_map_init(sp))
  return (1);
 F_CLR(VIP(sp), VIP_S_MODELINE);
 F_SET(sp, SC_TINPUT | SC_TINPUT_INFO);


 tp->lno = TMAP[0].lno;
 if (lno != TMAP[0].lno) {
  if (vs_line(sp, &TMAP[0], ((void*)0), ((void*)0)))
   return (1);
  (void)sp->gp->scr_refresh(sp, 0);
 }
 return (0);
}
