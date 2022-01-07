
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__** argv; scalar_t__ argc; } ;
struct TYPE_11__ {struct TYPE_11__* nextdisp; } ;
struct TYPE_10__ {int * bp; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXCMD ;


 int E_NEWSCREEN ;
 int F_ISSET (TYPE_3__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int SC_SSWITCH ;
 scalar_t__ vs_fg (TYPE_2__*,TYPE_2__**,int *,int) ;

int
ex_fg(SCR *sp, EXCMD *cmdp)
{
 SCR *nsp;
 int newscreen;

 newscreen = F_ISSET(cmdp, E_NEWSCREEN);
 if (vs_fg(sp, &nsp, cmdp->argc ? cmdp->argv[0]->bp : ((void*)0), newscreen))
  return (1);


 if (newscreen) {
  sp->nextdisp = nsp;
  F_SET(sp, SC_SSWITCH);
 }
 return (0);
}
