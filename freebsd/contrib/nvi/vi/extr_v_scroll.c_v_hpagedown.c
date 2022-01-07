
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int m_stop; int m_final; int count; } ;
typedef TYPE_1__ VICMD ;
struct TYPE_8__ {int defscroll; } ;
typedef TYPE_2__ SCR ;


 int CNTRL_D ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int VC_C1SET ;
 scalar_t__ vs_sm_scroll (TYPE_2__*,int *,int ,int ) ;

int
v_hpagedown(SCR *sp, VICMD *vp)
{







 if (F_ISSET(vp, VC_C1SET))
  sp->defscroll = vp->count;
 if (vs_sm_scroll(sp, &vp->m_stop, sp->defscroll, CNTRL_D))
  return (1);
 vp->m_final = vp->m_stop;
 return (0);
}
