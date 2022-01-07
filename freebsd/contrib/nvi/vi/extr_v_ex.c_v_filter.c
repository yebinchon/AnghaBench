
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_22__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_27__ {int lno; } ;
struct TYPE_26__ {int lno; } ;
struct TYPE_24__ {int cno; int lno; } ;
struct TYPE_28__ {TYPE_3__ m_stop; TYPE_2__ m_start; TYPE_1__ m_final; int rkp; } ;
typedef TYPE_4__ VICMD ;
struct TYPE_31__ {int argv; scalar_t__ argc; } ;
struct TYPE_30__ {int cno; int lno; int tiq; } ;
struct TYPE_29__ {scalar_t__ term; int len; scalar_t__ lb; } ;
struct TYPE_25__ {int args; scalar_t__ argsoff; } ;
typedef TYPE_5__ TEXT ;
typedef TYPE_6__ SCR ;
typedef TYPE_7__ EXCMD ;


 int C_BANG ;
 TYPE_22__* EXP (TYPE_6__*) ;
 scalar_t__ F_ISSET (TYPE_4__*,int ) ;
 scalar_t__ ISCMD (int ,char) ;
 scalar_t__ L (char*) ;
 TYPE_5__* TAILQ_FIRST (int ) ;
 scalar_t__ TERM_OK ;
 int TXT_BS ;
 int TXT_CR ;
 int TXT_ESCAPE ;
 int TXT_FILEC ;
 int TXT_PROMPT ;
 int VC_ISDOT ;
 scalar_t__ argv_exp1 (TYPE_6__*,TYPE_7__*,scalar_t__,int,int) ;
 int ex_cinit (TYPE_6__*,TYPE_7__*,int ,int,int ,int ,int ) ;
 int v_exec_ex (TYPE_6__*,TYPE_4__*,TYPE_7__*) ;
 scalar_t__ v_tcmd (TYPE_6__*,TYPE_4__*,char,int) ;
 int vs_home (TYPE_6__*) ;

int
v_filter(SCR *sp, VICMD *vp)
{
 EXCMD cmd;
 TEXT *tp;
 if (F_ISSET(vp, VC_ISDOT) ||
     ISCMD(vp->rkp, 'N') || ISCMD(vp->rkp, 'n')) {
  ex_cinit(sp,
      &cmd, C_BANG, 2, vp->m_start.lno, vp->m_stop.lno, 0);
  EXP(sp)->argsoff = 0;

  if (argv_exp1(sp, &cmd, L("!"), 1, 1))
   return (1);
  cmd.argc = EXP(sp)->argsoff;
  cmd.argv = EXP(sp)->args;
  return (v_exec_ex(sp, vp, &cmd));
 }


 if (v_tcmd(sp, vp,
     '!', TXT_BS | TXT_CR | TXT_ESCAPE | TXT_FILEC | TXT_PROMPT))
  return (1);
 tp = TAILQ_FIRST(sp->tiq);
 if (tp->term != TERM_OK) {
  vp->m_final.lno = sp->lno;
  vp->m_final.cno = sp->cno;
  return (0);
 }


 vs_home(sp);

 ex_cinit(sp, &cmd, C_BANG, 2, vp->m_start.lno, vp->m_stop.lno, 0);
 EXP(sp)->argsoff = 0;

 if (argv_exp1(sp, &cmd, tp->lb + 1, tp->len - 1, 1))
  return (1);
 cmd.argc = EXP(sp)->argsoff;
 cmd.argv = EXP(sp)->args;
 return (v_exec_ex(sp, vp, &cmd));
}
