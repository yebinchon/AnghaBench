
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_8__ {scalar_t__ cno; int lno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_start; int rkp; TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 scalar_t__ ISCMD (int ,char) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 int VM_LMODE ;
 scalar_t__ db_last (int *,int*) ;
 scalar_t__ nonblank (int *,int,scalar_t__*) ;
 int v_down (int *,TYPE_2__*) ;
 int v_sol (int *) ;

int
v_cfirst(SCR *sp, VICMD *vp)
{
 recno_t cnt, lno;
 if (ISMOTION(vp))
  F_SET(vp, VM_LMODE);





 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 if (cnt != 1) {
  --vp->count;
  return (v_down(sp, vp));
 }







 vp->m_stop.cno = 0;
 if (nonblank(sp, vp->m_stop.lno, &vp->m_stop.cno))
  return (1);







 if (vp->m_stop.lno == 1 &&
     vp->m_stop.cno == 0 && ISCMD(vp->rkp, 'd')) {
  if (db_last(sp, &lno))
   return (1);
  if (lno == 0) {
   v_sol(sp);
   return (1);
  }
 }





 vp->m_final =
     ISMOTION(vp) && ISCMD(vp->rkp, 'y') ? vp->m_start : vp->m_stop;
 return (0);
}
