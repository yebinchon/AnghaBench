
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_8__ {int lno; scalar_t__ cno; } ;
struct TYPE_10__ {int lno; scalar_t__ cno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_3__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;
typedef int CHAR_T ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int INTEXT_CHECK ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 int VM_LMODE ;
 int abort () ;
 scalar_t__ db_get (int *,int,int ,int **,size_t*) ;
 scalar_t__ v_isempty (int *,size_t) ;
 int v_sof (int *,TYPE_3__*) ;

int
v_paragraphb(SCR *sp, VICMD *vp)
{
 enum { P_INTEXT, P_INBLANK } pstate;
 size_t len;
 recno_t cnt, lno;
 CHAR_T *p;
 char *lp;
 lno = vp->m_start.lno;

 if (ISMOTION(vp))
  if (vp->m_start.cno == 0) {
   if (vp->m_start.lno == 1) {
    v_sof(sp, &vp->m_start);
    return (1);
   } else
    --vp->m_start.lno;
   F_SET(vp, VM_LMODE);
  } else
   --vp->m_start.cno;

 if (vp->m_start.lno <= 1)
  goto sof;


 if (db_get(sp, lno, 0, &p, &len))
  goto sof;





 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 cnt *= 2;
 if (len == 0 || v_isempty(p, len))
  pstate = P_INBLANK;
 else {
  --cnt;
  pstate = P_INTEXT;






  if (vp->m_start.cno > 0)
   ++lno;
 }

 for (;;) {
  if (db_get(sp, --lno, 0, &p, &len))
   goto sof;
  switch (pstate) {
  case P_INTEXT:
   INTEXT_CHECK;
   break;
  case P_INBLANK:
   if (len != 0 && !v_isempty(p, len)) {
    if (!--cnt)
     goto found;
    pstate = P_INTEXT;
   }
   break;
  default:
   abort();
  }
 }


sof: lno = 1;

found: vp->m_stop.lno = lno;
 vp->m_stop.cno = 0;





 vp->m_final = vp->m_stop;
 return (0);
}
