
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_6__ {int lno; } ;
struct TYPE_7__ {int count; TYPE_1__ m_stop; int m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int VC_C1SET ;
 int db_exist (int *,int) ;
 scalar_t__ db_last (int *,scalar_t__*) ;
 int goto_adjust (TYPE_2__*) ;
 int v_eof (int *,int *) ;

int
v_lgoto(SCR *sp, VICMD *vp)
{
 recno_t nlines;

 if (F_ISSET(vp, VC_C1SET)) {
  if (!db_exist(sp, vp->count)) {




   if (vp->count == 1) {
    if (db_last(sp, &nlines))
     return (1);
    if (nlines == 0)
     return (0);
   }
   v_eof(sp, &vp->m_start);
   return (1);
  }
  vp->m_stop.lno = vp->count;
 } else {
  if (db_last(sp, &nlines))
   return (1);
  vp->m_stop.lno = nlines ? nlines : 1;
 }
 goto_adjust(vp);
 return (0);
}
