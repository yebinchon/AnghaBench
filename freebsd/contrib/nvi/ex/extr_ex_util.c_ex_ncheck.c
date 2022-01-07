
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ccnt; scalar_t__ q_ccnt; char** cargv; } ;
typedef TYPE_1__ SCR ;


 int M_ERR ;
 int msgq (TYPE_1__*,int ,char*,int) ;

int
ex_ncheck(SCR *sp, int force)
{
 char **ap;






 if (!force && sp->ccnt != sp->q_ccnt + 1 &&
     sp->cargv != ((void*)0) && sp->cargv[1] != ((void*)0)) {
  sp->q_ccnt = sp->ccnt;

  for (ap = sp->cargv + 1; *ap != ((void*)0); ++ap);
  msgq(sp, M_ERR,
      "167|%d more files to edit", (int)(ap - sp->cargv) - 1);

  return (1);
 }
 return (0);
}
