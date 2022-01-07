
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_stop; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;


 int P_MIDDLE ;
 int goto_adjust (TYPE_1__*) ;
 scalar_t__ vs_sm_position (int *,int *,int ,int ) ;

int
v_middle(SCR *sp, VICMD *vp)
{





 if (vs_sm_position(sp, &vp->m_stop, 0, P_MIDDLE))
  return (1);
 goto_adjust(vp);
 return (0);
}
