
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_long ;
typedef enum which { ____Placeholder_which } which ;
struct TYPE_13__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_11__ {int count; TYPE_3__ m_stop; TYPE_3__ m_start; TYPE_3__ m_final; int rkp; } ;
typedef TYPE_1__ VICMD ;
struct TYPE_12__ {scalar_t__ cs_lno; scalar_t__ cs_cno; scalar_t__ cs_flags; int cs_ch; } ;
typedef TYPE_2__ VCS ;
typedef int SCR ;


 int BIGWORD ;
 scalar_t__ CS_EMP ;
 scalar_t__ CS_EOF ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 scalar_t__ ISBLANK (int ) ;
 scalar_t__ ISCMD (int ,char) ;
 scalar_t__ ISMOTION (TYPE_1__*) ;
 int VC_C1SET ;
 scalar_t__ cs_fblank (int *,TYPE_2__*) ;
 scalar_t__ cs_fspace (int *,TYPE_2__*) ;
 scalar_t__ cs_init (int *,TYPE_2__*) ;
 scalar_t__ cs_next (int *,TYPE_2__*) ;
 scalar_t__ inword (int ) ;
 int v_eof (int *,TYPE_3__*) ;

__attribute__((used)) static int
fword(SCR *sp, VICMD *vp, enum which type)
{
 enum { INWORD, NOTWORD } state;
 VCS cs;
 u_long cnt;

 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 cs.cs_lno = vp->m_start.lno;
 cs.cs_cno = vp->m_start.cno;
 if (cs_init(sp, &cs))
  return (1);
 if (cs.cs_flags == CS_EMP || (cs.cs_flags == 0 && ISBLANK(cs.cs_ch))) {
  if (ISMOTION(vp) && cs.cs_flags != CS_EMP && cnt == 1) {
   if (ISCMD(vp->rkp, 'c'))
    return (0);
   if (ISCMD(vp->rkp, 'd') || ISCMD(vp->rkp, 'y')) {
    if (cs_fspace(sp, &cs))
     return (1);
    goto ret;
   }
  }
  if (cs_fblank(sp, &cs))
   return (1);
  --cnt;
 }







 if (type == BIGWORD)
  while (cnt--) {
   for (;;) {
    if (cs_next(sp, &cs))
     return (1);
    if (cs.cs_flags == CS_EOF)
     goto ret;
    if (cs.cs_flags != 0 || ISBLANK(cs.cs_ch))
     break;
   }






   if (cnt == 0 && ISMOTION(vp)) {
    if ((ISCMD(vp->rkp, 'd') ||
        ISCMD(vp->rkp, 'y')) &&
        cs_fspace(sp, &cs))
     return (1);
    break;
   }


   if (cs_fblank(sp, &cs))
    return (1);
   if (cs.cs_flags == CS_EOF)
    goto ret;
  }
 else
  while (cnt--) {
   state = cs.cs_flags == 0 &&
       inword(cs.cs_ch) ? INWORD : NOTWORD;
   for (;;) {
    if (cs_next(sp, &cs))
     return (1);
    if (cs.cs_flags == CS_EOF)
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

   if (cnt == 0 && ISMOTION(vp)) {
    if ((ISCMD(vp->rkp, 'd') ||
        ISCMD(vp->rkp, 'y')) &&
        cs_fspace(sp, &cs))
     return (1);
    break;
   }


   if (cs.cs_flags != 0 || ISBLANK(cs.cs_ch))
    if (cs_fblank(sp, &cs))
     return (1);
   if (cs.cs_flags == CS_EOF)
    goto ret;
  }







ret: if (!ISMOTION(vp) &&
     cs.cs_lno == vp->m_start.lno && cs.cs_cno == vp->m_start.cno) {
  v_eof(sp, &vp->m_start);
  return (1);
 }


 vp->m_stop.lno = cs.cs_lno;
 vp->m_stop.cno = cs.cs_cno;
 if (ISMOTION(vp) && cs.cs_flags == 0)
  --vp->m_stop.cno;





 vp->m_final = ISMOTION(vp) ? vp->m_start : vp->m_stop;
 return (0);
}
