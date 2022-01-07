
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cno; int lno; } ;
struct TYPE_6__ {TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 scalar_t__ ISMOTION (TYPE_2__*) ;
 scalar_t__ nonblank (int *,int ,scalar_t__*) ;
 int v_sol (int *) ;

int
v_first(SCR *sp, VICMD *vp)
{
 vp->m_stop.cno = 0;
 if (nonblank(sp, vp->m_stop.lno, &vp->m_stop.cno))
  return (1);







 if (ISMOTION(vp) && vp->m_start.cno == vp->m_stop.cno) {
  v_sol(sp);
  return (1);
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
