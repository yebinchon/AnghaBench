
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cno; int lno; } ;
struct TYPE_7__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 int v_nomove (int *) ;
 int v_sol (int *) ;
 scalar_t__ vs_colpos (int *,int ,size_t) ;

int
v_ncol(SCR *sp, VICMD *vp)
{
 if (F_ISSET(vp, VC_C1SET) && vp->count > 1) {
  --vp->count;
  vp->m_stop.cno =
      vs_colpos(sp, vp->m_start.lno, (size_t)vp->count);






  if (ISMOTION(vp) && vp->m_stop.cno == vp->m_start.cno) {
   v_nomove(sp);
   return (1);
  }
 } else {






  if (ISMOTION(vp) && vp->m_start.cno == 0) {
   v_sol(sp);
   return (1);
  }
  vp->m_stop.cno = 0;
 }
 if (vp->m_start.cno < vp->m_stop.cno)
  if (ISMOTION(vp)) {
   --vp->m_stop.cno;
   vp->m_final = vp->m_start;
  } else
   vp->m_final = vp->m_stop;
 else {
  if (ISMOTION(vp))
   --vp->m_start.cno;
  vp->m_final = vp->m_stop;
 }
 return (0);
}
