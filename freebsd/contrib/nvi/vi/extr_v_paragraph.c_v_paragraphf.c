
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_8__ {size_t cno; int lno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_start; TYPE_1__ m_final; int rkp; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;
typedef int CHAR_T ;


 int F_CLR (TYPE_2__*,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int INTEXT_CHECK ;
 scalar_t__ ISCMD (int ,char) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 int VM_LMODE ;
 int VM_RCM_MASK ;
 int VM_RCM_SETFNB ;
 int abort () ;
 scalar_t__ db_eget (int *,int,int **,size_t*,int*) ;
 scalar_t__ db_get (int *,int,int ,int **,size_t*) ;
 scalar_t__ nonblank (int *,int,size_t*) ;
 int v_eof (int *,int *) ;
 scalar_t__ v_isempty (int *,size_t) ;

int
v_paragraphf(SCR *sp, VICMD *vp)
{
 enum { P_INTEXT, P_INBLANK } pstate;
 size_t lastlen, len;
 recno_t cnt, lastlno, lno;
 int isempty;
 CHAR_T *p;
 char *lp;
 if (ISMOTION(vp))
  if (vp->m_start.cno == 0)
   F_SET(vp, VM_LMODE);
  else {
   vp->m_stop = vp->m_start;
   vp->m_stop.cno = 0;
   if (nonblank(sp, vp->m_stop.lno, &vp->m_stop.cno))
    return (1);
   if (vp->m_start.cno <= vp->m_stop.cno)
    F_SET(vp, VM_LMODE);
  }


 lno = vp->m_start.lno;
 if (db_get(sp, lno, 0, &p, &len))
  goto eof;





 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 cnt *= 2;
 if (len == 0 || v_isempty(p, len))
  pstate = P_INBLANK;
 else {
  --cnt;
  pstate = P_INTEXT;
 }

 for (;;) {
  lastlno = lno;
  lastlen = len;
  if (db_get(sp, ++lno, 0, &p, &len))
   goto eof;
  switch (pstate) {
  case P_INTEXT:
   INTEXT_CHECK;
   break;
  case P_INBLANK:
   if (len == 0 || v_isempty(p, len))
    break;
   if (--cnt) {
    pstate = P_INTEXT;
    break;
   }
found: if (ISMOTION(vp)) {
    vp->m_stop.lno = lastlno;
    vp->m_stop.cno = lastlen ? lastlen - 1 : 0;
    vp->m_final = vp->m_start;
   } else {
    vp->m_stop.lno = lno;
    vp->m_stop.cno = 0;
    vp->m_final = vp->m_stop;
   }
   return (0);
  default:
   abort();
  }
 }
eof: if (vp->m_start.lno == lno || vp->m_start.lno == lno - 1) {
  if (db_eget(sp, vp->m_start.lno, &p, &len, &isempty)) {
   if (!isempty)
    return (1);
   vp->m_start.cno = 0;
   return (0);
  }
  if (vp->m_start.cno == (len ? len - 1 : 0)) {
   v_eof(sp, ((void*)0));
   return (1);
  }
 }
 if (ISMOTION(vp) && ISCMD(vp->rkp, 'd')) {
  F_CLR(vp, VM_RCM_MASK);
  F_SET(vp, VM_RCM_SETFNB);
 }
 vp->m_stop.lno = lno - 1;
 vp->m_stop.cno = len ? len - 1 : 0;
 vp->m_final = ISMOTION(vp) ? vp->m_start : vp->m_stop;
 return (0);
}
