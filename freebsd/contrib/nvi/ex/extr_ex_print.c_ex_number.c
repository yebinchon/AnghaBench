
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int cno; int lno; } ;
struct TYPE_9__ {int iflags; TYPE_5__ addr2; int addr1; } ;
struct TYPE_8__ {int cno; int lno; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXCMD ;


 int E_C_HASH ;
 scalar_t__ ex_print (TYPE_1__*,TYPE_2__*,int *,TYPE_5__*,int) ;

int
ex_number(SCR *sp, EXCMD *cmdp)
{
 if (ex_print(sp, cmdp,
     &cmdp->addr1, &cmdp->addr2, cmdp->iflags | E_C_HASH))
  return (1);
 sp->lno = cmdp->addr2.lno;
 sp->cno = cmdp->addr2.cno;
 return (0);
}
