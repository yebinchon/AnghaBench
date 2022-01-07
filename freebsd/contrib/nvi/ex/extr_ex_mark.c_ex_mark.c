
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int addr1; TYPE_1__** argv; } ;
struct TYPE_5__ {int len; int * bp; } ;
typedef int SCR ;
typedef TYPE_2__ EXCMD ;


 int M_ERR ;
 int NEEDFILE (int *,TYPE_2__*) ;
 int mark_set (int *,int ,int *,int) ;
 int msgq (int *,int ,char*) ;

int
ex_mark(SCR *sp, EXCMD *cmdp)
{
 NEEDFILE(sp, cmdp);

 if (cmdp->argv[0]->len != 1) {
  msgq(sp, M_ERR, "136|Mark names must be a single character");
  return (1);
 }
 return (mark_set(sp, cmdp->argv[0]->bp[0], &cmdp->addr1, 1));
}
