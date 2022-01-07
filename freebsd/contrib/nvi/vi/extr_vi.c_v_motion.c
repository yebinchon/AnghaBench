
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct TYPE_23__ {int lno; size_t cno; } ;
struct TYPE_22__ {int lno; size_t cno; } ;
struct TYPE_24__ {int count; scalar_t__ key; int flags; struct TYPE_24__* kp; TYPE_2__ m_final; TYPE_1__ m_stop; TYPE_1__ m_start; struct TYPE_24__* rkp; scalar_t__ (* func ) (TYPE_4__*,TYPE_3__*) ;} ;
typedef TYPE_3__ VICMD ;
struct TYPE_25__ {int lno; size_t cno; } ;
typedef TYPE_4__ SCR ;


 int F_CLR (TYPE_3__*,int) ;
 int F_ISSET (TYPE_3__*,int) ;
 int F_SET (TYPE_3__*,int) ;
 scalar_t__ GC_OK ;
 int LF_CLR (int ) ;
 scalar_t__ LF_ISSET (int ) ;
 int LF_SET (int ) ;
 int VC_C1RESET ;
 int VC_C1SET ;
 int VC_ISDOT ;
 int VIM_EMPTY ;
 int VM_COMMASK ;
 int VM_LDOUBLE ;
 int VM_LMODE ;
 int VM_RCM ;
 int VM_RCM_MASK ;
 int VM_RCM_SET ;
 int V_DOT ;
 int db_exist (TYPE_4__*,int) ;
 scalar_t__ db_get (TYPE_4__*,int,int ,int *,size_t*) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ stub1 (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__ tmotion ;
 scalar_t__ v_cmd (TYPE_4__*,int *,TYPE_3__*,TYPE_3__*,int*,int*) ;
 int v_emsg (TYPE_4__*,int *,int ) ;
 TYPE_3__* vikeys ;

__attribute__((used)) static int
v_motion(
 SCR *sp,
 VICMD *dm,
 VICMD *vp,
 int *mappedp)
{
 VICMD motion;
 size_t len;
 u_long cnt;
 u_int flags;
 int tilde_reset, notused;






 if (F_ISSET(vp, VC_ISDOT)) {
  motion = *dm;
  F_SET(&motion, VC_ISDOT);
  F_CLR(&motion, VM_COMMASK);
 } else {
  memset(&motion, 0, sizeof(VICMD));
  if (v_cmd(sp, ((void*)0), &motion, vp, &notused, mappedp) != GC_OK)
   return (1);
 }







 cnt = motion.count = F_ISSET(&motion, VC_C1SET) ? motion.count : 1;
 if (F_ISSET(vp, VC_C1SET)) {
  motion.count *= vp->count;
  F_SET(&motion, VC_C1SET);






  F_CLR(vp, VC_C1SET);
  F_SET(vp, VC_C1RESET);
 }







 if (vp->key == motion.key) {
  F_SET(vp, VM_LDOUBLE | VM_LMODE);


  vp->m_start.lno = sp->lno;
  vp->m_start.cno = 0;
  vp->m_stop.lno = sp->lno + motion.count - 1;
  if (db_get(sp, vp->m_stop.lno, 0, ((void*)0), &len)) {
   if (vp->m_stop.lno != 1 ||
      (vp->key != 'c' && vp->key != '!')) {
    v_emsg(sp, ((void*)0), VIM_EMPTY);
    return (1);
   }
   vp->m_stop.cno = 0;
  } else
   vp->m_stop.cno = len ? len - 1 : 0;
 } else {





  motion.rkp = vp->kp;






  if (vp->kp == &tmotion) {
   tilde_reset = 1;
   vp->kp = &vikeys['y'];
  } else
   tilde_reset = 0;
  flags = F_ISSET(vp, VM_RCM_MASK);
  if (LF_ISSET(VM_RCM_SET)) {
   LF_SET(VM_RCM);
   LF_CLR(VM_RCM_SET);
  }
  F_CLR(vp, VM_RCM_MASK);
  F_SET(&motion, motion.kp->flags & ~VM_RCM_MASK);







  motion.m_final.lno =
      motion.m_stop.lno = motion.m_start.lno = sp->lno;
  motion.m_final.cno =
      motion.m_stop.cno = motion.m_start.cno = sp->cno;


  if ((motion.kp->func)(sp, &motion))
   return (1);







  if (!db_exist(sp, vp->m_stop.lno)) {
   if (vp->m_stop.lno != 1 ||
      (vp->key != 'c' && vp->key != '!')) {
    v_emsg(sp, ((void*)0), VIM_EMPTY);
    return (1);
   }
   vp->m_stop.cno = 0;
  }





  if (tilde_reset)
   vp->kp = &tmotion;
  F_SET(vp, F_ISSET(&motion, VM_COMMASK | VM_RCM_MASK));





  if (!F_ISSET(vp, VM_RCM_MASK))
   F_SET(vp, flags);






  vp->rkp = motion.kp;







  if (motion.m_start.lno > motion.m_stop.lno ||
      (motion.m_start.lno == motion.m_stop.lno &&
      motion.m_start.cno > motion.m_stop.cno)) {
   vp->m_start = motion.m_stop;
   vp->m_stop = motion.m_start;
  } else {
   vp->m_start = motion.m_start;
   vp->m_stop = motion.m_stop;
  }
  vp->m_final = motion.m_final;
 }






 if (F_ISSET(vp->kp, V_DOT)) {
  *dm = motion;
  dm->count = cnt;
 }
 return (0);
}
