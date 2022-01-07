
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int iflags; } ;
struct TYPE_5__ {int tq; } ;
typedef int SCR ;
typedef TYPE_1__ EX_PRIVATE ;
typedef TYPE_2__ EXCMD ;


 TYPE_1__* EXP (int *) ;
 int E_C_FORCE ;
 int FL_ISSET (int ,int ) ;
 int TAG_EMPTY ;
 scalar_t__ TAILQ_EMPTY (int ) ;
 int TAILQ_LAST (int ,int ) ;
 int TAILQ_PREV (int ,int ,int ) ;
 int _tqh ;
 int q ;
 int tag_msg (int *,int ,int *) ;
 int tag_pop (int *,int ,int ) ;

int
ex_tag_top(SCR *sp, EXCMD *cmdp)
{
 EX_PRIVATE *exp;

 exp = EXP(sp);


 if (TAILQ_EMPTY(exp->tq)) {
  tag_msg(sp, TAG_EMPTY, ((void*)0));
  return (1);
 }


 return (tag_pop(sp, TAILQ_PREV(TAILQ_LAST(exp->tq, _tqh), _tqh, q),
     FL_ISSET(cmdp->iflags, E_C_FORCE)));
}
