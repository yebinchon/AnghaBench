
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int argc; TYPE_1__** argv; } ;
struct TYPE_8__ {int argsoff; int * argv; TYPE_1__** args; } ;
struct TYPE_7__ {size_t len; int* bp; } ;
typedef int SCR ;
typedef TYPE_2__ EX_PRIVATE ;
typedef TYPE_3__ EXCMD ;
typedef int CHAR_T ;


 TYPE_2__* EXP (int *) ;
 scalar_t__ IS_ESCAPE (int *,TYPE_3__*,int) ;
 int TRACE (int *,char*,size_t,int ) ;
 int argv_alloc (int *,size_t) ;
 scalar_t__ cmdskip (int) ;
 size_t cnt ;

int
argv_exp3(SCR *sp, EXCMD *excp, CHAR_T *cmd, size_t cmdlen)
{
 EX_PRIVATE *exp;
 size_t len;
 int ch, off;
 CHAR_T *ap, *p;

 for (exp = EXP(sp); cmdlen > 0; ++exp->argsoff) {

  for (; cmdlen > 0; --cmdlen, ++cmd) {
   ch = *cmd;
   if (!cmdskip(ch))
    break;
  }
  if (cmdlen == 0)
   break;
  for (ap = cmd, len = 0; cmdlen > 0; ++cmd, --cmdlen, ++len) {
   ch = *cmd;
   if (IS_ESCAPE(sp, excp, ch) && cmdlen > 1) {
    ++cmd;
    --cmdlen;
   } else if (cmdskip(ch))
    break;
  }
  argv_alloc(sp, len);
  off = exp->argsoff;
  exp->args[off]->len = len;
  for (p = exp->args[off]->bp; len > 0; --len, *p++ = *ap++)
   if (IS_ESCAPE(sp, excp, *ap))
    ++ap;
  *p = '\0';
 }
 excp->argv = exp->args;
 excp->argc = exp->argsoff;





 return (0);
}
