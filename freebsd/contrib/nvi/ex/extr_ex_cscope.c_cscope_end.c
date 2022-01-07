
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cscq; } ;
typedef int SCR ;
typedef TYPE_1__ EX_PRIVATE ;


 TYPE_1__* EXP (int *) ;
 int SLIST_EMPTY (int ) ;
 scalar_t__ terminate (int *,int *,int) ;

int
cscope_end(SCR *sp)
{
 EX_PRIVATE *exp;

 for (exp = EXP(sp); !SLIST_EMPTY(exp->cscq);)
  if (terminate(sp, ((void*)0), 1))
   return (1);
 return (0);
}
