
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_7__ {scalar_t__ lno; } ;
struct TYPE_6__ {int count; TYPE_2__ m_stop; TYPE_2__ m_start; TYPE_2__ m_final; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 scalar_t__ ISMOTION (TYPE_1__*) ;
 int VC_C1SET ;
 int db_exist (int *,scalar_t__) ;
 int v_eof (int *,TYPE_2__*) ;

int
v_down(SCR *sp, VICMD *vp)
{
 recno_t lno;

 lno = vp->m_start.lno + (F_ISSET(vp, VC_C1SET) ? vp->count : 1);
 if (!db_exist(sp, lno)) {
  v_eof(sp, &vp->m_start);
  return (1);
 }
 vp->m_stop.lno = lno;
 vp->m_final = ISMOTION(vp) ? vp->m_start : vp->m_stop;
 return (0);
}
