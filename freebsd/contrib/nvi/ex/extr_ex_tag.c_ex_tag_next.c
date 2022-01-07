
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int iflags; } ;
struct TYPE_16__ {int tq; } ;
struct TYPE_15__ {scalar_t__ mlen; scalar_t__ msg; int slen; int search; } ;
struct TYPE_14__ {TYPE_2__* current; int tag; } ;
typedef TYPE_1__ TAGQ ;
typedef TYPE_2__ TAG ;
typedef int SCR ;
typedef TYPE_3__ EX_PRIVATE ;
typedef TYPE_4__ EXCMD ;


 TYPE_3__* EXP (int *) ;
 int E_C_FORCE ;
 int FL_ISSET (int ,int ) ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int INT2CHAR (int *,scalar_t__,scalar_t__,char*,size_t) ;
 int M_ERR ;
 int M_INFO ;
 int TAG_CSCOPE ;
 int TAG_EMPTY ;
 TYPE_1__* TAILQ_FIRST (int ) ;
 TYPE_2__* TAILQ_NEXT (TYPE_2__*,int ) ;
 int cscope_search (int *,TYPE_1__*,TYPE_2__*) ;
 int ctag_search (int *,int ,int ,int ) ;
 scalar_t__ ex_tag_nswitch (int *,TYPE_2__*,int ) ;
 int msgq (int *,int ,char*,...) ;
 int q ;
 int tag_msg (int *,int ,int *) ;

int
ex_tag_next(SCR *sp, EXCMD *cmdp)
{
 EX_PRIVATE *exp;
 TAG *tp;
 TAGQ *tqp;
 char *np;
 size_t nlen;

 exp = EXP(sp);
 if ((tqp = TAILQ_FIRST(exp->tq)) == ((void*)0)) {
  tag_msg(sp, TAG_EMPTY, ((void*)0));
  return (1);
 }
 if ((tp = TAILQ_NEXT(tqp->current, q)) == ((void*)0)) {
  msgq(sp, M_ERR, "282|Already at the last tag of this group");
  return (1);
 }
 if (ex_tag_nswitch(sp, tp, FL_ISSET(cmdp->iflags, E_C_FORCE)))
  return (1);
 tqp->current = tp;

 if (F_ISSET(tqp, TAG_CSCOPE))
  (void)cscope_search(sp, tqp, tp);
 else
  (void)ctag_search(sp, tp->search, tp->slen, tqp->tag);
 if (tqp->current->msg) {
     INT2CHAR(sp, tqp->current->msg, tqp->current->mlen + 1,
       np, nlen);
     msgq(sp, M_INFO, "%s", np);
 }
 return (0);
}
