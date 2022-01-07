
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_5__ {int count; int m_final; int m_start; int buffer; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 scalar_t__ INTERRUPTED (int *) ;
 int VC_BUFFER ;
 int VC_C1SET ;
 int VC_ISDOT ;
 int inc_buf (int *,TYPE_1__*) ;
 scalar_t__ put (int *,int *,int *,int *,int *,int ) ;

int
v_Put(SCR *sp, VICMD *vp)
{
 u_long cnt;

 if (F_ISSET(vp, VC_ISDOT))
  inc_buf(sp, vp);






 for (cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1; cnt--;) {
  if (put(sp, ((void*)0),
      F_ISSET(vp, VC_BUFFER) ? &vp->buffer : ((void*)0),
      &vp->m_start, &vp->m_final, 0))
   return (1);
  vp->m_start = vp->m_final;
  if (INTERRUPTED(sp))
   return (1);
 }
 return (0);
}
