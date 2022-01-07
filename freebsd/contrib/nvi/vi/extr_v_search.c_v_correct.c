
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dir_t ;
struct TYPE_6__ {scalar_t__ lno; size_t cno; } ;
struct TYPE_5__ {TYPE_2__ m_stop; TYPE_2__ m_start; TYPE_2__ m_final; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;
typedef TYPE_2__ MARK ;


 int BACKWARD ;
 int DBG_FATAL ;
 int FORWARD ;
 int F_SET (TYPE_1__*,int ) ;
 int M_BERR ;
 int VM_LMODE ;
 scalar_t__ db_get (int *,scalar_t__,int ,int *,size_t*) ;
 int msgq (int *,int ,char*) ;
 scalar_t__ nonblank (int *,scalar_t__,size_t*) ;

int
v_correct(SCR *sp, VICMD *vp, int isdelta)
{
 dir_t dir;
 MARK m;
 size_t len;
 if (vp->m_start.lno == vp->m_stop.lno &&
     vp->m_start.cno == vp->m_stop.cno) {
  msgq(sp, M_BERR, "190|Search wrapped to original position");
  return (1);
 }






 if (isdelta)
  F_SET(vp, VM_LMODE);
 if (vp->m_start.lno > vp->m_stop.lno ||
     (vp->m_start.lno == vp->m_stop.lno &&
     vp->m_start.cno > vp->m_stop.cno)) {
  m = vp->m_start;
  vp->m_start = vp->m_stop;
  vp->m_stop = m;
  dir = BACKWARD;
 } else
  dir = FORWARD;
 vp->m_final = vp->m_start;





 if (isdelta)
  return (0);
 if (vp->m_start.lno < vp->m_stop.lno && vp->m_stop.cno == 0) {
  if (db_get(sp, --vp->m_stop.lno, DBG_FATAL, ((void*)0), &len))
   return (1);
  vp->m_stop.cno = len ? len - 1 : 0;
  len = 0;
  if (nonblank(sp, vp->m_start.lno, &len))
   return (1);
  if (vp->m_start.cno <= len)
   F_SET(vp, VM_LMODE);
 } else
  --vp->m_stop.cno;

 return (0);
}
