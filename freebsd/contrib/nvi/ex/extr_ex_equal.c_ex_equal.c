
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_6__ {int lno; } ;
struct TYPE_7__ {TYPE_1__ addr1; } ;
typedef int SCR ;
typedef TYPE_2__ EXCMD ;


 int E_ADDR_DEF ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int NEEDFILE (int *,TYPE_2__*) ;
 scalar_t__ db_last (int *,int *) ;
 int ex_printf (int *,char*,int ) ;

int
ex_equal(SCR *sp, EXCMD *cmdp)
{
 recno_t lno;

 NEEDFILE(sp, cmdp);
 if (F_ISSET(cmdp, E_ADDR_DEF)) {
  if (db_last(sp, &lno))
   return (1);
 } else
  lno = cmdp->addr1.lno;

 (void)ex_printf(sp, "%ld\n", lno);
 return (0);
}
