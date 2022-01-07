
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int argc; int iflags; TYPE_1__** argv; } ;
struct TYPE_8__ {char* tag_last; } ;
struct TYPE_7__ {int len; int bp; } ;
typedef int TAGQ ;
typedef int SCR ;
typedef TYPE_2__ EX_PRIVATE ;
typedef TYPE_3__ EXCMD ;


 TYPE_2__* EXP (int *) ;
 int E_C_FORCE ;
 int E_NEWSCREEN ;
 int FL_ISSET (int ,int ) ;
 int F_ISSET (TYPE_3__*,int ) ;
 int M_ERR ;
 int M_SYSERR ;
 int O_TAGLENGTH ;
 long O_VAL (int *,int ) ;
 long STRLEN (char*) ;
 int abort () ;
 int * ctag_slist (int *,char*) ;
 int free (char*) ;
 int msgq (int *,int ,char*) ;
 scalar_t__ tagq_push (int *,int *,int ,int ) ;
 char* v_wstrdup (int *,int ,int ) ;

int
ex_tag_push(SCR *sp, EXCMD *cmdp)
{
 EX_PRIVATE *exp;
 TAGQ *tqp;
 long tl;

 exp = EXP(sp);
 switch (cmdp->argc) {
 case 1:
  if (exp->tag_last != ((void*)0))
   free(exp->tag_last);

  if ((exp->tag_last = v_wstrdup(sp, cmdp->argv[0]->bp,
      cmdp->argv[0]->len)) == ((void*)0)) {
   msgq(sp, M_SYSERR, ((void*)0));
   return (1);
  }


  if ((tl =
      O_VAL(sp, O_TAGLENGTH)) != 0 && STRLEN(exp->tag_last) > tl)
   exp->tag_last[tl] = '\0';
  break;
 case 0:
  if (exp->tag_last == ((void*)0)) {
   msgq(sp, M_ERR, "158|No previous tag entered");
   return (1);
  }
  break;
 default:
  abort();
 }


 if ((tqp = ctag_slist(sp, exp->tag_last)) == ((void*)0))
  return (1);

 if (tagq_push(sp, tqp, F_ISSET(cmdp, E_NEWSCREEN),
          FL_ISSET(cmdp->iflags, E_C_FORCE)))
  return 1;

 return 0;
}
