
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_7__ {int cno; } ;
struct TYPE_8__ {int cno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_2__ m_start; } ;
typedef TYPE_3__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 scalar_t__ ISMOTION (TYPE_3__*) ;
 int VC_C1SET ;
 int v_sol (int *) ;

int
v_left(SCR *sp, VICMD *vp)
{
 recno_t cnt;





 if (vp->m_start.cno == 0) {
  v_sol(sp);
  return (1);
 }


 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 if (vp->m_start.cno > cnt)
  vp->m_stop.cno = vp->m_start.cno - cnt;
 else
  vp->m_stop.cno = 0;






 if (ISMOTION(vp))
  --vp->m_start.cno;
 vp->m_final = vp->m_stop;
 return (0);
}
