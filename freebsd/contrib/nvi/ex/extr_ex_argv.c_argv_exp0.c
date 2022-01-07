
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t argc; TYPE_1__** argv; } ;
struct TYPE_7__ {size_t argsoff; TYPE_1__** args; } ;
struct TYPE_6__ {char* bp; size_t len; } ;
typedef int SCR ;
typedef TYPE_2__ EX_PRIVATE ;
typedef TYPE_3__ EXCMD ;
typedef int CHAR_T ;


 TYPE_2__* EXP (int *) ;
 int MEMCPY (char*,int *,size_t) ;
 int argv_alloc (int *,size_t) ;

int
argv_exp0(SCR *sp, EXCMD *excp, CHAR_T *cmd, size_t cmdlen)
{
 EX_PRIVATE *exp;

 exp = EXP(sp);
 argv_alloc(sp, cmdlen);
 MEMCPY(exp->args[exp->argsoff]->bp, cmd, cmdlen);
 exp->args[exp->argsoff]->bp[cmdlen] = '\0';
 exp->args[exp->argsoff]->len = cmdlen;
 ++exp->argsoff;
 excp->argv = exp->args;
 excp->argc = exp->argsoff;
 return (0);
}
