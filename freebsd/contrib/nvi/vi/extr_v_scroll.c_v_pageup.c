
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_9__ {int count; int m_stop; int m_final; } ;
typedef TYPE_1__ VICMD ;
struct TYPE_10__ {int t_maxrows; } ;
typedef TYPE_2__ SCR ;


 int CNTRL_B ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 scalar_t__ IS_SPLIT (TYPE_2__*) ;
 int MIN (int ,int) ;
 int O_VAL (TYPE_2__*,int ) ;
 int O_WINDOW ;
 int VC_C1SET ;
 scalar_t__ vs_sm_scroll (TYPE_2__*,int *,int,int ) ;

int
v_pageup(SCR *sp, VICMD *vp)
{
 recno_t offset;
 offset = (F_ISSET(vp, VC_C1SET) ? vp->count : 1) * (IS_SPLIT(sp) ?
     MIN(sp->t_maxrows, O_VAL(sp, O_WINDOW)) : O_VAL(sp, O_WINDOW));
 offset = offset <= 2 ? 1 : offset - 2;
 if (vs_sm_scroll(sp, &vp->m_stop, offset, CNTRL_B))
  return (1);
 vp->m_final = vp->m_stop;
 return (0);
}
