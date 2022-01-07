
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t cno; int lno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_start; TYPE_1__ m_final; int rkp; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int ISCMD (int ,char) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 int VM_LMODE ;
 scalar_t__ db_eget (int *,int ,int *,size_t*,int*) ;
 scalar_t__ nonblank (int *,int ,size_t*) ;
 scalar_t__ v_down (int *,TYPE_2__*) ;
 int v_eol (int *,int *) ;

int
v_dollar(SCR *sp, VICMD *vp)
{
 size_t len;
 int isempty;





 if ((F_ISSET(vp, VC_C1SET) ? vp->count : 1) != 1) {






  vp->m_stop.cno = 0;
  if (nonblank(sp, vp->m_start.lno, &vp->m_stop.cno))
   return (1);
  if (ISMOTION(vp) && vp->m_start.cno <= vp->m_stop.cno)
   F_SET(vp, VM_LMODE);

  --vp->count;
  if (v_down(sp, vp))
   return (1);
 }
 if (db_eget(sp, vp->m_stop.lno, ((void*)0), &len, &isempty)) {
  if (!isempty)
   return (1);
  len = 0;
 }

 if (len == 0) {
  if (ISMOTION(vp) && !ISCMD(vp->rkp, 'c')) {
   v_eol(sp, ((void*)0));
   return (1);
  }
  return (0);
 }





 vp->m_stop.cno = len ? len - 1 : 0;
 vp->m_final = ISMOTION(vp) ? vp->m_start : vp->m_stop;
 return (0);
}
