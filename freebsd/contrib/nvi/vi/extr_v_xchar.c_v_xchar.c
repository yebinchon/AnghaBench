
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {size_t cno; } ;
struct TYPE_11__ {int cno; int lno; } ;
struct TYPE_9__ {int cno; } ;
struct TYPE_10__ {int count; TYPE_5__ m_stop; TYPE_4__ m_start; int buffer; TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int M_BERR ;
 int VC_BUFFER ;
 int VC_C1SET ;
 scalar_t__ cut (int *,int *,TYPE_4__*,TYPE_5__*,int ) ;
 scalar_t__ db_eget (int *,int ,int *,size_t*,int*) ;
 int del (int *,TYPE_4__*,TYPE_5__*,int ) ;
 int msgq (int *,int ,char*) ;

int
v_xchar(SCR *sp, VICMD *vp)
{
 size_t len;
 int isempty;

 if (db_eget(sp, vp->m_start.lno, ((void*)0), &len, &isempty)) {
  if (isempty)
   goto nodel;
  return (1);
 }
 if (len == 0) {
nodel: msgq(sp, M_BERR, "206|No characters to delete");
  return (1);
 }
 if (F_ISSET(vp, VC_C1SET))
  vp->m_stop.cno += vp->count - 1;
 if (vp->m_stop.cno >= len - 1) {
  vp->m_stop.cno = len - 1;
  vp->m_final.cno = vp->m_start.cno ? vp->m_start.cno - 1 : 0;
 } else
  vp->m_final.cno = vp->m_start.cno;

 if (cut(sp,
     F_ISSET(vp, VC_BUFFER) ? &vp->buffer : ((void*)0),
     &vp->m_start, &vp->m_stop, 0))
  return (1);
 return (del(sp, &vp->m_start, &vp->m_stop, 0));
}
