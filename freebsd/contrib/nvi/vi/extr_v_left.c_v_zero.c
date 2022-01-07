
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cno; } ;
struct TYPE_6__ {scalar_t__ cno; } ;
struct TYPE_8__ {TYPE_2__ m_stop; TYPE_2__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_3__ VICMD ;
typedef int SCR ;


 scalar_t__ ISMOTION (TYPE_3__*) ;
 int v_sol (int *) ;

int
v_zero(SCR *sp, VICMD *vp)
{





 if (ISMOTION(vp) && vp->m_start.cno == 0) {
  v_sol(sp);
  return (1);
 }






 vp->m_stop.cno = 0;
 if (ISMOTION(vp))
  --vp->m_start.cno;
 vp->m_final = vp->m_stop;
 return (0);
}
