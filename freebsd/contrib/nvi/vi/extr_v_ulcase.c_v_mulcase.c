
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_6__ {scalar_t__ lno; size_t cno; } ;
struct TYPE_7__ {scalar_t__ lno; int cno; } ;
struct TYPE_8__ {TYPE_1__ m_stop; TYPE_2__ m_start; } ;
typedef TYPE_3__ VICMD ;
typedef int SCR ;
typedef int CHAR_T ;


 int DBG_FATAL ;
 int F_ISSET (TYPE_3__*,int ) ;
 int VM_LMODE ;
 scalar_t__ db_get (int *,scalar_t__,int ,int **,size_t*) ;
 scalar_t__ ulcase (int *,scalar_t__,int *,size_t,int ,size_t) ;

int
v_mulcase(SCR *sp, VICMD *vp)
{
 CHAR_T *p;
 size_t len;
 recno_t lno;

 for (lno = vp->m_start.lno;;) {
  if (db_get(sp, lno, DBG_FATAL, &p, &len))
   return (1);
  if (len != 0 && ulcase(sp, lno, p, len,
      lno == vp->m_start.lno ? vp->m_start.cno : 0,
      !F_ISSET(vp, VM_LMODE) &&
      lno == vp->m_stop.lno ? vp->m_stop.cno : len))
   return (1);

  if (++lno > vp->m_stop.lno)
   break;
 }
 return (0);
}
