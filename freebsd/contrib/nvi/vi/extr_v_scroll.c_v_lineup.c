
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int m_stop; int m_final; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;


 int CNTRL_Y ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int VC_C1SET ;
 scalar_t__ vs_sm_scroll (int *,int *,int,int ) ;

int
v_lineup(SCR *sp, VICMD *vp)
{




 if (vs_sm_scroll(sp,
     &vp->m_stop, F_ISSET(vp, VC_C1SET) ? vp->count : 1, CNTRL_Y))
  return (1);
 vp->m_final = vp->m_stop;
 return (0);
}
