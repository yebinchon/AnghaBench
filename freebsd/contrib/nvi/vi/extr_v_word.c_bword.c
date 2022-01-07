
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_long ;
typedef enum which { ____Placeholder_which } which ;
struct TYPE_15__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_12__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_13__ {int count; TYPE_4__ m_start; TYPE_1__ m_stop; TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_14__ {scalar_t__ cs_lno; scalar_t__ cs_cno; scalar_t__ cs_flags; int cs_ch; } ;
typedef TYPE_3__ VCS ;
typedef int SCR ;


 int BIGWORD ;
 scalar_t__ CS_SOF ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 scalar_t__ ISBLANK (int ) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 scalar_t__ cs_bblank (int *,TYPE_3__*) ;
 scalar_t__ cs_init (int *,TYPE_3__*) ;
 scalar_t__ cs_next (int *,TYPE_3__*) ;
 scalar_t__ cs_prev (int *,TYPE_3__*) ;
 scalar_t__ inword (int ) ;
 int v_sof (int *,TYPE_4__*) ;

__attribute__((used)) static int
bword(SCR *sp, VICMD *vp, enum which type)
{
 enum { INWORD, NOTWORD } state;
 VCS cs;
 u_long cnt;

 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 cs.cs_lno = vp->m_start.lno;
 cs.cs_cno = vp->m_start.cno;
 if (cs_init(sp, &cs))
  return (1);
 if (cs.cs_flags == 0 && !ISBLANK(cs.cs_ch)) {
  if (cs_prev(sp, &cs))
   return (1);
  if (cs.cs_flags == 0 && !ISBLANK(cs.cs_ch))
   goto start;
 }
 if (cs_bblank(sp, &cs))
  return (1);







start: if (type == BIGWORD)
  while (cnt--) {
   for (;;) {
    if (cs_prev(sp, &cs))
     return (1);
    if (cs.cs_flags == CS_SOF)
     goto ret;
    if (cs.cs_flags != 0 || ISBLANK(cs.cs_ch))
     break;
   }





   if (cnt == 0) {
    if (cs.cs_flags == 0 && cs_next(sp, &cs))
     return (1);
    break;
   }


   if (cs_bblank(sp, &cs))
    return (1);
   if (cs.cs_flags == CS_SOF)
    goto ret;
  }
 else
  while (cnt--) {
   state = cs.cs_flags == 0 &&
       inword(cs.cs_ch) ? INWORD : NOTWORD;
   for (;;) {
    if (cs_prev(sp, &cs))
     return (1);
    if (cs.cs_flags == CS_SOF)
     goto ret;
    if (cs.cs_flags != 0 || ISBLANK(cs.cs_ch))
     break;
    if (state == INWORD) {
     if (!inword(cs.cs_ch))
      break;
    } else
     if (inword(cs.cs_ch))
      break;
   }

   if (cnt == 0) {
    if (cs.cs_flags == 0 && cs_next(sp, &cs))
     return (1);
    break;
   }


   if (cs.cs_flags != 0 || ISBLANK(cs.cs_ch))
    if (cs_bblank(sp, &cs))
     return (1);
   if (cs.cs_flags == CS_SOF)
    goto ret;
  }


ret: if (cs.cs_lno == vp->m_start.lno && cs.cs_cno == vp->m_start.cno) {
  v_sof(sp, &vp->m_start);
  return (1);
 }


 vp->m_stop.lno = cs.cs_lno;
 vp->m_stop.cno = cs.cs_cno;
 vp->m_final = vp->m_stop;
 if (ISMOTION(vp))
  --vp->m_start.cno;
 return (0);
}
