
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_66__ TYPE_8__ ;
typedef struct TYPE_65__ TYPE_5__ ;
typedef struct TYPE_64__ TYPE_4__ ;
typedef struct TYPE_63__ TYPE_3__ ;
typedef struct TYPE_62__ TYPE_2__ ;
typedef struct TYPE_61__ TYPE_21__ ;
typedef struct TYPE_60__ TYPE_1__ ;


struct TYPE_62__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_63__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_60__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_65__ {int flags; scalar_t__ lno; scalar_t__ cno; int count; int (* scr_discard ) (TYPE_5__*,int *) ;TYPE_4__* frp; int (* scr_rename ) (TYPE_5__*,int ,int) ;struct TYPE_65__* gp; struct TYPE_65__* nextdisp; TYPE_2__ m_final; scalar_t__ (* func ) (TYPE_5__*,TYPE_5__*) ;struct TYPE_65__* kp; int ccnt; TYPE_3__ m_stop; TYPE_1__ m_start; int key; int rcm; int showmode; int member_0; } ;
typedef TYPE_5__ VI_PRIVATE ;
typedef TYPE_5__ VICMD ;
struct TYPE_66__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_64__ {int name; } ;
struct TYPE_61__ {int count; } ;
typedef TYPE_5__ SCR ;
typedef TYPE_8__ MARK ;
typedef TYPE_5__ GS ;


 int ABSMARK1 ;
 int CH_MAPPED ;
 int CLR_INTERRUPT (TYPE_5__*) ;
 TYPE_5__* DOT ;
 TYPE_21__* DOTMOTION ;
 scalar_t__ EXCMD_RUNNING (TYPE_5__*) ;
 int EXM_SECURE ;
 int F_CLR (TYPE_5__*,int) ;
 int F_ISSET (TYPE_5__*,int) ;
 int F_SET (TYPE_5__*,int) ;






 int G_SRESTART ;
 int G_TMP_INUSE ;
 scalar_t__ INTERRUPTED (TYPE_5__*) ;
 int KEY_NAME (TYPE_5__*,int ) ;
 scalar_t__ MAPPED_KEYS_WAITING (TYPE_5__*) ;
 int M_BERR ;
 int M_ERR ;
 scalar_t__ O_ISSET (TYPE_5__*,int ) ;
 int O_SECURE ;
 int SC_EX ;
 int SC_EXIT ;
 int SC_EXIT_FORCE ;
 int SC_FSWITCH ;
 int SC_SSWITCH ;
 int SC_STATUS ;
 int SM_COMMAND ;
 int VC_C1RESET ;
 int VC_C1SET ;
 int VC_ISDOT ;
 TYPE_5__* VIP (TYPE_5__*) ;
 int VIP_CUR_INVALID ;
 int VIP_RCM_LAST ;
 int VIP_S_REFRESH ;
 int VM_COMMASK ;
 int VM_LMODE ;

 int VM_RCM_MASK ;




 int V_ABS ;
 int V_ABS_C ;
 int V_ABS_L ;
 int V_DOT ;
 int V_MOTION ;
 int V_SECURE ;
 int abort () ;
 int ex_emsg (TYPE_5__*,int ,int ) ;
 scalar_t__ file_end (TYPE_5__*,int *,int) ;
 scalar_t__ log_cursor (TYPE_5__*) ;
 scalar_t__ mark_set (TYPE_5__*,int ,TYPE_8__*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int msgq (TYPE_5__*,int ,char*) ;
 int nonblank (TYPE_5__*,scalar_t__,scalar_t__*) ;
 scalar_t__ screen_end (TYPE_5__*) ;
 int stub1 (TYPE_5__*,int ,int) ;
 scalar_t__ stub2 (TYPE_5__*,TYPE_5__*) ;
 int stub3 (TYPE_5__*,int ,int) ;
 int stub4 (TYPE_5__*,int ,int) ;
 int stub5 (TYPE_5__*,int ,int) ;
 int stub6 (TYPE_5__*,int *) ;
 int v_cmd (TYPE_5__*,TYPE_5__*,TYPE_5__*,int *,int*,int*) ;
 int v_comlog (TYPE_5__*,TYPE_5__*) ;
 int v_dtoh (TYPE_5__*) ;
 scalar_t__ v_event_flush (TYPE_5__*,int ) ;
 scalar_t__ v_init (TYPE_5__*) ;
 scalar_t__ v_motion (TYPE_5__*,TYPE_21__*,TYPE_5__*,int*) ;
 TYPE_5__* vikeys ;
 int vs_column (TYPE_5__*,int *) ;
 scalar_t__ vs_discard (TYPE_5__*,TYPE_5__**) ;
 scalar_t__ vs_rcm (TYPE_5__*,scalar_t__,int) ;
 scalar_t__ vs_refresh (TYPE_5__*,int) ;
 scalar_t__ vs_resolve (TYPE_5__*,int *,int ) ;
 scalar_t__ vs_swap (TYPE_5__*,TYPE_5__**,int *) ;

int
vi(SCR **spp)
{
 GS *gp;
 MARK abs;
 SCR *next, *sp;
 VICMD cmd = { 0 }, *vp;
 VI_PRIVATE *vip;
 int comcount, mapped, rval;


 sp = *spp;
 gp = sp->gp;


 vp = &cmd;


 F_SET(vp, 131);


 if (v_init(sp))
  return (1);


 (void)sp->gp->scr_rename(sp, sp->frp->name, 1);

 for (vip = VIP(sp), rval = 0;;) {

  if (!MAPPED_KEYS_WAITING(sp) && vs_resolve(sp, ((void*)0), 0))
   goto ret;





  if (F_ISSET(vip, VIP_S_REFRESH))
   F_CLR(vip, VIP_S_REFRESH);
  else {
   sp->showmode = SM_COMMAND;
   if (vs_refresh(sp, 0))
    goto ret;
  }


  if (F_ISSET(vp, 131 | 130 | 128)) {
   F_CLR(vip, VIP_RCM_LAST);
   (void)vs_column(sp, &sp->rcm);
  }






  if (MAPPED_KEYS_WAITING(sp))
   mapped = 1;
  else {
   if (log_cursor(sp))
    goto err;
   mapped = 0;
  }






  if (EXCMD_RUNNING(gp)) {
   vp->kp = &vikeys[':'];
   goto ex_continue;
  }


  memset(vp, 0, sizeof(VICMD));
  switch (v_cmd(sp, DOT, vp, ((void*)0), &comcount, &mapped)) {
  case 138:
   goto err;
  case 137:
   goto gc_err_noflush;
  case 136:
   goto gc_event;
  case 135:
   goto ret;
  case 134:
   goto intr;
  case 133:
   break;
  }


  if (F_ISSET(vp->kp, V_SECURE) && O_ISSET(sp, O_SECURE)) {
   ex_emsg(sp, KEY_NAME(sp, vp->key), EXM_SECURE);
   goto err;
  }






  if (F_ISSET(vp, VC_ISDOT) && comcount)
   DOTMOTION->count = 1;


  F_SET(vp, vp->kp->flags);


  if (F_ISSET(vp, V_ABS | V_ABS_C | V_ABS_L)) {
   abs.lno = sp->lno;
   abs.cno = sp->cno;
  }







  vp->m_start.lno = vp->m_stop.lno = vp->m_final.lno = sp->lno;
  vp->m_start.cno = vp->m_stop.cno = vp->m_final.cno = sp->cno;





  if (F_ISSET(vp, V_MOTION) &&
      v_motion(sp, DOTMOTION, vp, &mapped)) {
   if (INTERRUPTED(sp))
    goto intr;
   goto err;
  }
  if (F_ISSET(vp, VC_C1SET) && F_ISSET(vp, VM_LMODE))
   vp->m_stop.lno += vp->count - 1;


  ++sp->ccnt;





ex_continue: if (vp->kp->func(sp, vp))
   goto err;
gc_event:
  if (F_ISSET(sp, SC_EXIT | SC_EXIT_FORCE)) {
   if (file_end(sp, ((void*)0), F_ISSET(sp, SC_EXIT_FORCE)))
    goto ret;
   if (vs_discard(sp, &next))
    goto ret;
   if (next == ((void*)0) && vs_swap(sp, &next, ((void*)0)))
    goto ret;
   *spp = next;
   if (screen_end(sp))
    goto ret;
   if (next == ((void*)0))
    break;


   sp = next;
   vip = VIP(sp);
   (void)sp->gp->scr_rename(sp, sp->frp->name, 1);


   F_SET(vip, VIP_CUR_INVALID);

   continue;
  }
  if (F_ISSET(vp, V_DOT) && !mapped) {
   *DOT = cmd;
   F_SET(DOT, VC_ISDOT);






   if (F_ISSET(vp, VC_C1RESET))
    F_SET(DOT, VC_C1SET);


   F_CLR(DOT, VM_COMMASK | VM_RCM_MASK);
  }
  switch (F_ISSET(vp, VM_RCM_MASK)) {
  case 0:
  case 131:
   break;
  case 132:
   vp->m_final.cno = vs_rcm(sp,
       vp->m_final.lno, F_ISSET(vip, VIP_RCM_LAST));
   break;
  case 129:
   F_SET(vip, VIP_RCM_LAST);
   break;
  case 130:
   vp->m_final.cno = 0;

  case 128:
   if (nonblank(sp, vp->m_final.lno, &vp->m_final.cno))
    goto err;
   break;
  default:
   abort();
  }


  sp->lno = vp->m_final.lno;
  sp->cno = vp->m_final.cno;





  if ((F_ISSET(vp, V_ABS) ||
      (F_ISSET(vp, V_ABS_L) && sp->lno != abs.lno) ||
      (F_ISSET(vp, V_ABS_C) &&
      (sp->lno != abs.lno || sp->cno != abs.cno))) &&
      mark_set(sp, ABSMARK1, &abs, 1))
   goto err;

  if (0) {
err: if (v_event_flush(sp, CH_MAPPED))
    msgq(sp, M_BERR,
       "110|Vi command failed: mapped keys discarded");
  }





gc_err_noflush: if (INTERRUPTED(sp)) {
intr: CLR_INTERRUPT(sp);
   if (v_event_flush(sp, CH_MAPPED))
    msgq(sp, M_ERR,
        "231|Interrupted: mapped keys discarded");
   else
    msgq(sp, M_ERR, "236|Interrupted");
  }


  if (F_ISSET(sp, SC_SSWITCH)) {
   F_CLR(sp, SC_SSWITCH);





   F_SET(sp, SC_STATUS);


   sp = sp->nextdisp;
   vip = VIP(sp);
   (void)sp->gp->scr_rename(sp, sp->frp->name, 1);


   F_SET(vip, VIP_CUR_INVALID);


   if (vs_refresh(sp, 1))
    return (1);
  }


  if (F_ISSET(sp, SC_FSWITCH)) {
   F_CLR(sp, SC_FSWITCH);
   (void)sp->gp->scr_rename(sp, sp->frp->name, 1);
  }


  if (F_ISSET(gp, G_SRESTART) || F_ISSET(sp, SC_EX)) {
   *spp = sp;
   v_dtoh(sp);
   gp->scr_discard(sp, ((void*)0));
   break;
  }
 }
 if (0)
ret: rval = 1;
 return (rval);
}
