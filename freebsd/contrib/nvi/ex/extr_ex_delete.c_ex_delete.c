
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_14__ {scalar_t__ lno; } ;
struct TYPE_13__ {TYPE_6__ addr1; int addr2; int buffer; int iflags; } ;
struct TYPE_12__ {scalar_t__ lno; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXCMD ;


 int CUT_LINEMODE ;
 int E_C_BUFFER ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int NEEDFILE (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ cut (TYPE_1__*,int *,TYPE_6__*,int *,int ) ;
 scalar_t__ db_last (TYPE_1__*,scalar_t__*) ;
 scalar_t__ del (TYPE_1__*,TYPE_6__*,int *,int) ;

int
ex_delete(SCR *sp, EXCMD *cmdp)
{
 recno_t lno;

 NEEDFILE(sp, cmdp);







 if (cut(sp,
     FL_ISSET(cmdp->iflags, E_C_BUFFER) ? &cmdp->buffer : ((void*)0),
     &cmdp->addr1, &cmdp->addr2, CUT_LINEMODE))
  return (1);


 if (del(sp, &cmdp->addr1, &cmdp->addr2, 1))
  return (1);


 sp->lno = cmdp->addr1.lno;


 if (db_last(sp, &lno))
  return (1);
 if (sp->lno > lno)
  sp->lno = lno;
 return (0);
}
