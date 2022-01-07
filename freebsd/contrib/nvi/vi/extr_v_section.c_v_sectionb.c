
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_9__ {int lno; scalar_t__ cno; } ;
struct TYPE_8__ {int lno; scalar_t__ cno; } ;
struct TYPE_10__ {int count; TYPE_2__ m_stop; TYPE_2__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_3__ VICMD ;
typedef int SCR ;
typedef char CHAR_T ;


 int F_CLR (TYPE_3__*,int ) ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int F_SET (TYPE_3__*,int ) ;
 int O_SECTIONS ;
 char* O_STR (int *,int ) ;
 int VC_C1SET ;
 int VM_LMODE ;
 int VM_RCM_MASK ;
 int VM_RCM_SETFNB ;
 int db_get (int *,int,int ,char**,size_t*) ;
 int v_sof (int *,int *) ;

int
v_sectionb(SCR *sp, VICMD *vp)
{
 size_t len;
 recno_t cnt, lno;
 CHAR_T *p;
 char *list, *lp;


 if (vp->m_start.lno <= 1) {
  v_sof(sp, ((void*)0));
  return (1);
 }


 if ((list = O_STR(sp, O_SECTIONS)) == ((void*)0))
  return (1);

 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 for (lno = vp->m_start.lno; !db_get(sp, --lno, 0, &p, &len);) {
  if (len == 0)
   continue;
  if (p[0] == '{') {
   if (!--cnt)
    goto adjust1;
   continue;
  }







  if (p[0] == '\014') {
   if (!--cnt)
    goto adjust1;
   continue;
  }
  if (p[0] != '.' || len < 2)
   continue;
  for (lp = list; *lp != '\0'; lp += 2 * sizeof(*lp))
   if (lp[0] == p[1] &&
       ((lp[1] == ' ' && len == 2) || lp[1] == p[2]) &&
       !--cnt) {
adjust1: vp->m_stop.lno = lno;
    vp->m_stop.cno = 0;
    goto ret1;
   }
 }





 vp->m_stop.lno = 1;
 vp->m_stop.cno = 0;
ret1: if (vp->m_start.cno == 0) {
  F_CLR(vp, VM_RCM_MASK);
  F_SET(vp, VM_RCM_SETFNB);

  --vp->m_start.lno;
  F_SET(vp, VM_LMODE);
 } else
  --vp->m_start.cno;

 vp->m_final = vp->m_stop;
 return (0);
}
