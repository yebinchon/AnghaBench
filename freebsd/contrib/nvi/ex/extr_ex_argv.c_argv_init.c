
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ argc; int argv; } ;
struct TYPE_5__ {scalar_t__ argsoff; int args; } ;
typedef int SCR ;
typedef TYPE_1__ EX_PRIVATE ;
typedef TYPE_2__ EXCMD ;


 TYPE_1__* EXP (int *) ;
 int argv_alloc (int *,int) ;

int
argv_init(SCR *sp, EXCMD *excp)
{
 EX_PRIVATE *exp;

 exp = EXP(sp);
 exp->argsoff = 0;
 argv_alloc(sp, 1);

 excp->argv = exp->args;
 excp->argc = exp->argsoff;
 return (0);
}
