
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int addr1; int buffer; int iflags; } ;
struct TYPE_11__ {int cno; int lno; } ;
struct TYPE_10__ {int cno; int lno; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ MARK ;
typedef TYPE_3__ EXCMD ;


 int E_C_BUFFER ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int NEEDFILE (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ put (TYPE_1__*,int *,int *,int *,TYPE_2__*,int) ;

int
ex_put(SCR *sp, EXCMD *cmdp)
{
 MARK m;

 NEEDFILE(sp, cmdp);

 m.lno = sp->lno;
 m.cno = sp->cno;
 if (put(sp, ((void*)0),
     FL_ISSET(cmdp->iflags, E_C_BUFFER) ? &cmdp->buffer : ((void*)0),
     &cmdp->addr1, &m, 1))
  return (1);
 sp->lno = m.lno;
 sp->cno = m.cno;
 return (0);
}
