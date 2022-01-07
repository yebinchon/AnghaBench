
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t cno; int lno; } ;
struct TYPE_7__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 scalar_t__ db_eget (int *,int ,int *,size_t*,int*) ;
 int v_eol (int *,int *) ;

int
v_right(SCR *sp, VICMD *vp)
{
 size_t len;
 int isempty;

 if (db_eget(sp, vp->m_start.lno, ((void*)0), &len, &isempty)) {
  if (isempty)
   goto eol;
  return (1);
 }


 if (len == 0) {
eol: v_eol(sp, ((void*)0));
  return (1);
 }
 vp->m_stop.cno = vp->m_start.cno +
     (F_ISSET(vp, VC_C1SET) ? vp->count : 1);
 if (vp->m_start.cno == len - 1 && !ISMOTION(vp)) {
  v_eol(sp, ((void*)0));
  return (1);
 }
 if (vp->m_stop.cno >= len) {
  vp->m_stop.cno = len - 1;
  vp->m_final = ISMOTION(vp) ? vp->m_start : vp->m_stop;
 } else if (ISMOTION(vp)) {
  --vp->m_stop.cno;
  vp->m_final = vp->m_start;
 } else
  vp->m_final = vp->m_stop;
 return (0);
}
