
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* recno_t ;
struct TYPE_8__ {int cno; void* lno; } ;
struct TYPE_7__ {int cno; void* lno; } ;
struct TYPE_9__ {int addrcnt; int iflags; TYPE_2__ addr2; TYPE_1__ addr1; int * cmd; } ;
typedef int SCR ;
typedef TYPE_3__ EXCMD ;


 int E_C_FORCE ;
 int argv_init (int *,TYPE_3__*) ;
 int * cmds ;
 int memset (TYPE_3__*,int ,int) ;

void
ex_cinit(SCR *sp, EXCMD *cmdp, int cmd_id, int naddr, recno_t lno1, recno_t lno2, int force)
{
 memset(cmdp, 0, sizeof(EXCMD));
 cmdp->cmd = &cmds[cmd_id];
 cmdp->addrcnt = naddr;
 cmdp->addr1.lno = lno1;
 cmdp->addr2.lno = lno2;
 cmdp->addr1.cno = cmdp->addr2.cno = 1;
 if (force)
  cmdp->iflags |= E_C_FORCE;
 (void)argv_init(sp, cmdp);
}
