
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__* c; } ;
struct TYPE_15__ {TYPE_1__ bp1; } ;
struct TYPE_17__ {TYPE_2__ ibcw; struct TYPE_17__* lastbcomm; struct TYPE_17__* ibp; } ;
struct TYPE_16__ {int * ex_private; } ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ EX_PRIVATE ;


 TYPE_4__* EXP (TYPE_3__*) ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int SC_SCRIPT ;
 scalar_t__ argv_free (TYPE_3__*) ;
 scalar_t__ cscope_end (TYPE_3__*) ;
 scalar_t__ ex_tag_free (TYPE_3__*) ;
 int free (TYPE_4__*) ;
 scalar_t__ sscr_end (TYPE_3__*) ;

int
ex_screen_end(SCR *sp)
{
 EX_PRIVATE *exp;
 int rval;

 if ((exp = EXP(sp)) == ((void*)0))
  return (0);

 rval = 0;


 if (F_ISSET(sp, SC_SCRIPT) && sscr_end(sp))
  rval = 1;

 if (argv_free(sp))
  rval = 1;

 if (exp->ibp != ((void*)0))
  free(exp->ibp);

 if (exp->lastbcomm != ((void*)0))
  free(exp->lastbcomm);

 if (exp->ibcw.bp1.c != ((void*)0))
  free(exp->ibcw.bp1.c);

 if (ex_tag_free(sp))
  rval = 1;

 if (cscope_end(sp))
  rval = 1;


 free(exp);
 sp->ex_private = ((void*)0);

 return (rval);
}
