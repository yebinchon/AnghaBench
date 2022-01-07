
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {size_t cno; int lno; } ;
struct TYPE_16__ {scalar_t__ lno; } ;
struct TYPE_17__ {scalar_t__ lno; } ;
struct TYPE_14__ {TYPE_1__ m_final; TYPE_8__ m_start; TYPE_9__ m_stop; int buffer; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_15__ {int * rptlines; } ;
typedef TYPE_3__ SCR ;


 int CUT_LINEMODE ;
 int DBG_FATAL ;
 int F_CLR (TYPE_2__*,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 size_t L_YANKED ;
 int VC_BUFFER ;
 int VM_LMODE ;
 int VM_RCM_MASK ;
 int VM_RCM_SET ;
 scalar_t__ cut (TYPE_3__*,int *,TYPE_8__*,TYPE_9__*,int ) ;
 scalar_t__ db_get (TYPE_3__*,int ,int ,int *,size_t*) ;

int
v_yank(SCR *sp, VICMD *vp)
{
 size_t len;

 if (cut(sp,
     F_ISSET(vp, VC_BUFFER) ? &vp->buffer : ((void*)0), &vp->m_start,
     &vp->m_stop, F_ISSET(vp, VM_LMODE) ? CUT_LINEMODE : 0))
  return (1);
 sp->rptlines[L_YANKED] += (vp->m_stop.lno - vp->m_start.lno) + 1;






 if (db_get(sp, vp->m_final.lno, DBG_FATAL, ((void*)0), &len))
  return (1);
 if (!F_ISSET(vp, VM_LMODE)) {
  F_CLR(vp, VM_RCM_MASK);
  F_SET(vp, VM_RCM_SET);


  if (vp->m_final.cno >= len)
   vp->m_final.cno = len ? len - 1 : 0;
 }
 return (0);
}
