
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_7__ {scalar_t__ cno; int lno; } ;
struct TYPE_8__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;
typedef char CHAR_T ;


 int DBG_FATAL ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int O_SECTIONS ;
 char* O_STR (int *,int ) ;
 int VC_C1SET ;
 int VM_LMODE ;
 scalar_t__ db_get (int *,int,int ,char**,size_t*) ;
 scalar_t__ nonblank (int *,int,scalar_t__*) ;
 int v_eof (int *,int *) ;

int
v_sectionf(SCR *sp, VICMD *vp)
{
 recno_t cnt, lno;
 size_t len;
 CHAR_T *p;
 char *list, *lp;


 if ((list = O_STR(sp, O_SECTIONS)) == ((void*)0))
  return (1);
 if (ISMOTION(vp))
  if (vp->m_start.cno == 0)
   F_SET(vp, VM_LMODE);
  else {
   vp->m_stop = vp->m_start;
   vp->m_stop.cno = 0;
   if (nonblank(sp, vp->m_stop.lno, &vp->m_stop.cno))
    return (1);
   if (vp->m_start.cno <= vp->m_stop.cno)
    F_SET(vp, VM_LMODE);
  }

 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 for (lno = vp->m_start.lno; !db_get(sp, ++lno, 0, &p, &len);) {
  if (len == 0)
   continue;
  if (p[0] == '{' || (ISMOTION(vp) && p[0] == '}')) {
   if (!--cnt) {
    if (p[0] == '{')
     goto adjust1;
    goto adjust2;
   }
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






adjust1: if (ISMOTION(vp))
     goto ret1;

adjust2: vp->m_stop.lno = lno;
    vp->m_stop.cno = 0;
    goto ret2;
   }
 }


 if (vp->m_start.lno == lno - 1) {
  v_eof(sp, ((void*)0));
  return (1);
 }

ret1: if (db_get(sp, --lno, DBG_FATAL, ((void*)0), &len))
  return (1);
 vp->m_stop.lno = lno;
 vp->m_stop.cno = len ? len - 1 : 0;





ret2: if (ISMOTION(vp)) {
  vp->m_final = vp->m_start;
  if (F_ISSET(vp, VM_LMODE))
   vp->m_final.cno = 0;
 } else
  vp->m_final = vp->m_stop;
 return (0);
}
