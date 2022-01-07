
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int tq; } ;
struct TYPE_10__ {int tagq; } ;
typedef TYPE_1__ TAGQ ;
typedef TYPE_1__ TAG ;
typedef int SCR ;
typedef TYPE_3__ EX_PRIVATE ;


 TYPE_3__* EXP (int *) ;
 scalar_t__ TAILQ_ENTRY_ISVALID (TYPE_1__*,int ) ;
 TYPE_1__* TAILQ_FIRST (int ) ;
 int TAILQ_REMOVE (int ,TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int q ;

int
tagq_free(SCR *sp, TAGQ *tqp)
{
 EX_PRIVATE *exp;
 TAG *tp;

 exp = EXP(sp);
 while ((tp = TAILQ_FIRST(tqp->tagq)) != ((void*)0)) {
  TAILQ_REMOVE(tqp->tagq, tp, q);
  free(tp);
 }





 if (TAILQ_ENTRY_ISVALID(tqp, q))
  TAILQ_REMOVE(exp->tq, tqp, q);
 free(tqp);
 return (0);
}
