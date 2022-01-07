
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_8__ {TYPE_1__ m_start; TYPE_1__ m_final; TYPE_1__ m_stop; int rkp; } ;
typedef TYPE_2__ VICMD ;


 int F_CLR (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 scalar_t__ ISCMD (int ,char) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VM_RCM_MASK ;
 int VM_RCM_SETFNB ;

__attribute__((used)) static void
goto_adjust(VICMD *vp)
{

 vp->m_final = vp->m_stop;
 if (ISMOTION(vp)) {
  F_CLR(vp, VM_RCM_MASK);
  F_SET(vp, VM_RCM_SETFNB);
 } else
  return;







 if (vp->m_stop.lno < vp->m_start.lno ||
     (vp->m_stop.lno == vp->m_start.lno &&
     vp->m_stop.cno < vp->m_start.cno)) {
  if (ISCMD(vp->rkp, 'y') && vp->m_stop.lno == vp->m_start.lno)
   vp->m_final = vp->m_start;
 } else
  vp->m_final = vp->m_start;
}
