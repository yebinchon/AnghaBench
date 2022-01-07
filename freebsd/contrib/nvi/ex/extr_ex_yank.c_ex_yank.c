
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr2; int addr1; int buffer; int iflags; } ;
typedef int SCR ;
typedef TYPE_1__ EXCMD ;


 int CUT_LINEMODE ;
 int E_C_BUFFER ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int NEEDFILE (int *,TYPE_1__*) ;
 int cut (int *,int *,int *,int *,int ) ;

int
ex_yank(SCR *sp, EXCMD *cmdp)
{
 NEEDFILE(sp, cmdp);






 return (cut(sp,
     FL_ISSET(cmdp->iflags, E_C_BUFFER) ? &cmdp->buffer : ((void*)0),
     &cmdp->addr1, &cmdp->addr2, CUT_LINEMODE));
}
