
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ count; int m_stop; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int P_BOTTOM ;
 int VC_C1SET ;
 int goto_adjust (TYPE_1__*) ;
 scalar_t__ vs_sm_position (int *,int *,scalar_t__,int ) ;

int
v_bottom(SCR *sp, VICMD *vp)
{
 if (vs_sm_position(sp, &vp->m_stop,
     F_ISSET(vp, VC_C1SET) ? vp->count - 1 : 0, P_BOTTOM))
  return (1);
 goto_adjust(vp);
 return (0);
}
