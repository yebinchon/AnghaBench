
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_long ;
typedef int recno_t ;
struct TYPE_7__ {size_t cno; int lno; } ;
struct TYPE_6__ {int lno; size_t cno; } ;
struct TYPE_8__ {int count; TYPE_2__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_3__ VICMD ;
typedef int SCR ;
typedef int CHAR_T ;


 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int VC_C1SET ;
 int VIM_EMPTY ;
 scalar_t__ db_get (int *,int,int ,int **,size_t*) ;
 scalar_t__ ulcase (int *,int,int *,size_t,size_t,size_t) ;
 int v_emsg (int *,int *,int ) ;

int
v_ulcase(SCR *sp, VICMD *vp)
{
 recno_t lno;
 size_t cno, lcnt, len;
 u_long cnt;
 CHAR_T *p;

 lno = vp->m_start.lno;
 cno = vp->m_start.cno;

 for (cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1; cnt > 0; cno = 0) {

  if (db_get(sp, lno, 0, &p, &len)) {
   if (lno == 1) {
    v_emsg(sp, ((void*)0), VIM_EMPTY);
    return (1);
   }
   --lno;
   break;
  }


  if (len == 0) {
   --cnt;
   vp->m_final.cno = 0;
   continue;
  }

  if (cno + cnt >= len) {
   lcnt = len - 1;
   cnt -= len - cno;

   vp->m_final.cno = len - 1;
  } else {
   lcnt = cno + cnt - 1;
   cnt = 0;

   vp->m_final.cno = lcnt + 1;
  }

  if (ulcase(sp, lno, p, len, cno, lcnt))
   return (1);

  if (cnt > 0)
   ++lno;
 }

 vp->m_final.lno = lno;
 return (0);
}
