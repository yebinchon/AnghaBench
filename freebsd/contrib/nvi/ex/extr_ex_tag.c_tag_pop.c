
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* current; } ;
struct TYPE_15__ {int tq; } ;
struct TYPE_14__ {struct TYPE_14__* frp; int cno; int lno; } ;
struct TYPE_13__ {TYPE_2__* frp; int cno; int lno; } ;
typedef int TAGQ ;
typedef TYPE_1__ TAG ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EX_PRIVATE ;


 TYPE_3__* EXP (TYPE_2__*) ;
 int FR_CURSORSET ;
 int FS_ALL ;
 int FS_POSSIBLE ;
 int FS_SETALT ;
 int F_SET (TYPE_2__*,int ) ;
 int SC_FSWITCH ;
 int * TAILQ_FIRST (int ) ;
 TYPE_9__* TAILQ_NEXT (int *,int ) ;
 scalar_t__ file_init (TYPE_2__*,TYPE_2__*,int *,int ) ;
 scalar_t__ file_m1 (TYPE_2__*,int,int) ;
 int q ;
 scalar_t__ tagq_free (TYPE_2__*,int *) ;

__attribute__((used)) static int
tag_pop(SCR *sp, TAGQ *dtqp, int force)
{
 EX_PRIVATE *exp;
 TAG *tp;
 TAGQ *tqp;

 exp = EXP(sp);





 tp = TAILQ_NEXT(dtqp, q)->current;
 if (tp->frp == sp->frp) {
  sp->lno = tp->lno;
  sp->cno = tp->cno;
 } else {
  if (file_m1(sp, force, FS_ALL | FS_POSSIBLE))
   return (1);

  tp->frp->lno = tp->lno;
  tp->frp->cno = tp->cno;
  F_SET(sp->frp, FR_CURSORSET);
  if (file_init(sp, tp->frp, ((void*)0), FS_SETALT))
   return (1);

  F_SET(sp, SC_FSWITCH);
 }


 do {
  tqp = TAILQ_FIRST(exp->tq);
  if (tagq_free(sp, tqp))
   return (0);
 } while (tqp != dtqp);





 if (TAILQ_NEXT(TAILQ_FIRST(exp->tq), q) == ((void*)0))
  tagq_free(sp, TAILQ_FIRST(exp->tq));

 return (0);
}
