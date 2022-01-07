
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_6__ {int lno; } ;
struct TYPE_8__ {int lno; } ;
struct TYPE_7__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_4__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int VC_C1SET ;
 int v_sof (int *,TYPE_4__*) ;

int
v_up(SCR *sp, VICMD *vp)
{
 recno_t lno;

 lno = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 if (vp->m_start.lno <= lno) {
  v_sof(sp, &vp->m_start);
  return (1);
 }
 vp->m_stop.lno = vp->m_start.lno - lno;
 vp->m_final = vp->m_stop;
 return (0);
}
