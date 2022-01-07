
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_19__ ;


typedef int u_long ;
struct TYPE_37__ {scalar_t__ rvalue; int rlast; } ;
typedef TYPE_2__ VI_PRIVATE ;
struct TYPE_36__ {size_t cno; scalar_t__ lno; } ;
struct TYPE_35__ {size_t cno; scalar_t__ lno; } ;
struct TYPE_38__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_19__ m_start; } ;
typedef TYPE_3__ VICMD ;
struct TYPE_41__ {int e_event; scalar_t__ e_value; int e_c; } ;
struct TYPE_40__ {int showmode; } ;
struct TYPE_39__ {size_t ai; int len; int lb; } ;
typedef TYPE_4__ TEXT ;
typedef TYPE_5__ SCR ;
typedef TYPE_6__ EVENT ;
typedef int CHAR_T ;


 int DBG_FATAL ;






 int FREE_SPACEW (TYPE_5__*,int *,size_t) ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int F_SET (TYPE_5__*,int ) ;
 int GET_SPACE_RETW (TYPE_5__*,int *,size_t,size_t) ;
 scalar_t__ K_CR ;
 scalar_t__ K_ESCAPE ;
 scalar_t__ K_NL ;
 scalar_t__ K_VLNEXT ;
 int MEMMOVE (int *,int *,size_t) ;
 int M_BERR ;
 int O_AUTOINDENT ;
 scalar_t__ O_ISSET (TYPE_5__*,int ) ;
 int SC_EXIT_FORCE ;
 int SM_REPLACE ;
 int STRSET (int *,int ,int) ;
 int VC_C1SET ;
 int VC_ISDOT ;
 int VIM_WRESIZE ;
 TYPE_2__* VIP (TYPE_5__*) ;
 scalar_t__ db_append (TYPE_5__*,int,scalar_t__,int ,int ) ;
 scalar_t__ db_get (TYPE_5__*,scalar_t__,int ,int **,size_t*) ;
 int db_set (TYPE_5__*,scalar_t__,int *,size_t) ;
 scalar_t__ isblank (int ) ;
 int msgq (TYPE_5__*,int ,char*) ;
 int text_free (TYPE_4__*) ;
 TYPE_4__* text_init (TYPE_5__*,int *,size_t,size_t) ;
 int v_emsg (TYPE_5__*,int *,int ) ;
 int v_eol (TYPE_5__*,TYPE_19__*) ;
 int v_event_err (TYPE_5__*,TYPE_6__*) ;
 scalar_t__ v_event_get (TYPE_5__*,TYPE_6__*,int ,int ) ;
 scalar_t__ v_txt_auto (TYPE_5__*,scalar_t__,int *,int ,TYPE_4__*) ;
 scalar_t__ vs_refresh (TYPE_5__*,int ) ;
 int vs_repaint (TYPE_5__*,TYPE_6__*) ;

int
v_replace(SCR *sp, VICMD *vp)
{
 EVENT ev;
 VI_PRIVATE *vip;
 TEXT *tp;
 size_t blen, len;
 u_long cnt;
 int quote, rval;
 CHAR_T *bp;
 CHAR_T *p;

 vip = VIP(sp);
 if (db_get(sp, vp->m_start.lno, DBG_FATAL, &p, &len))
  return (1);
 if (len == 0) {
  msgq(sp, M_BERR, "186|No characters to replace");
  return (1);
 }
 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 vp->m_stop.lno = vp->m_start.lno;
 vp->m_stop.cno = vp->m_start.cno + cnt - 1;
 if (vp->m_stop.cno > len - 1) {
  v_eol(sp, &vp->m_start);
  return (1);
 }





 quote = 0;
 if (!F_ISSET(vp, VC_ISDOT)) {
  sp->showmode = SM_REPLACE;
  if (vs_refresh(sp, 0))
   return (1);
next: if (v_event_get(sp, &ev, 0, 0))
   return (1);

  switch (ev.e_event) {
  case 133:




   if (!quote) {
    if (ev.e_value == K_VLNEXT) {
     quote = 1;
     goto next;
    }
    if (ev.e_value == K_ESCAPE)
     return (0);
   }
   vip->rlast = ev.e_c;
   vip->rvalue = ev.e_value;
   break;
  case 131:
  case 132:
   F_SET(sp, SC_EXIT_FORCE);
   return (1);
  case 130:

   return (0);
  case 128:

   v_emsg(sp, ((void*)0), VIM_WRESIZE);
   return (0);
  case 129:
   if (vs_repaint(sp, &ev))
    return (1);
   goto next;
  default:
   v_event_err(sp, &ev);
   return (0);
  }
 }


 GET_SPACE_RETW(sp, bp, blen, len);
 MEMMOVE(bp, p, len);
 p = bp;







 if ((!quote && vip->rvalue == K_CR) || vip->rvalue == K_NL) {

  vp->m_stop.lno = vp->m_start.lno + 1;
  vp->m_stop.cno = 0;


  if (db_set(sp, vp->m_start.lno, p, vp->m_start.cno))
   goto err_ret;
  p += vp->m_start.cno + cnt;
  len -= vp->m_start.cno + cnt;
  if (len != 0 && O_ISSET(sp, O_AUTOINDENT))
   for (; len && isblank(*p); --len, ++p);

  if ((tp = text_init(sp, p, len, len)) == ((void*)0))
   goto err_ret;

  if (len != 0 && O_ISSET(sp, O_AUTOINDENT)) {
   if (v_txt_auto(sp, vp->m_start.lno, ((void*)0), 0, tp))
    goto err_ret;
   vp->m_stop.cno = tp->ai ? tp->ai - 1 : 0;
  } else
   vp->m_stop.cno = 0;

  vp->m_stop.cno = tp->ai ? tp->ai - 1 : 0;
  if (db_append(sp, 1, vp->m_start.lno, tp->lb, tp->len))
err_ret: rval = 1;
  else {
   text_free(tp);
   rval = 0;
  }
 } else {
  STRSET(bp + vp->m_start.cno, vip->rlast, cnt);
  rval = db_set(sp, vp->m_start.lno, bp, len);
 }
 FREE_SPACEW(sp, bp, blen);

 vp->m_final = vp->m_stop;
 return (rval);
}
