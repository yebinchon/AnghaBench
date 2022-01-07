
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_7__ {int lno; size_t cno; } ;
struct TYPE_8__ {TYPE_1__ m_final; int m_stop; int m_start; int buffer; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 int CUT_LINEMODE ;
 int CUT_NUMOPT ;
 int CUT_NUMREQ ;
 int DBG_FATAL ;
 int F_CLR (TYPE_2__*,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int VC_BUFFER ;
 int VM_CUTREQ ;
 int VM_LDOUBLE ;
 int VM_LMODE ;
 int VM_RCM_MASK ;
 int VM_RCM_SET ;
 int VM_RCM_SETFNB ;
 scalar_t__ cut (int *,int *,int *,int *,int) ;
 int db_exist (int *,int) ;
 scalar_t__ db_get (int *,int,int ,int *,size_t*) ;
 scalar_t__ db_last (int *,int*) ;
 scalar_t__ del (int *,int *,int *,int) ;

int
v_delete(SCR *sp, VICMD *vp)
{
 recno_t nlines;
 size_t len;
 int lmode;

 lmode = F_ISSET(vp, VM_LMODE) ? CUT_LINEMODE : 0;


 if (cut(sp, F_ISSET(vp, VC_BUFFER) ? &vp->buffer : ((void*)0),
     &vp->m_start, &vp->m_stop,
     lmode | (F_ISSET(vp, VM_CUTREQ) ? CUT_NUMREQ : CUT_NUMOPT)))
  return (1);


 if (del(sp, &vp->m_start, &vp->m_stop, lmode))
  return (1);





 if (!db_exist(sp, vp->m_final.lno + 1)) {
  if (db_last(sp, &nlines))
   return (1);
  if (nlines == 0) {
   vp->m_final.lno = 1;
   vp->m_final.cno = 0;
   return (0);
  }
 }






 if (db_get(sp, vp->m_final.lno, 0, ((void*)0), &len)) {
  if (db_get(sp, nlines, DBG_FATAL, ((void*)0), &len))
   return (1);
  vp->m_final.lno = nlines;
 }
 if (!F_ISSET(vp, VM_LMODE)) {
  F_CLR(vp, VM_RCM_MASK);
  F_SET(vp, VM_RCM_SET);


  if (vp->m_final.cno >= len)
   vp->m_final.cno = len ? len - 1 : 0;
 }






 if (F_ISSET(vp, VM_LDOUBLE)) {
  F_CLR(vp, VM_RCM_MASK);
  F_SET(vp, VM_RCM_SETFNB);
 }
 return (0);
}
