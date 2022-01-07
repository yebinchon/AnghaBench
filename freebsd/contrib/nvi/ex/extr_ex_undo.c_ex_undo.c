
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int lundo; } ;
struct TYPE_14__ {int cno; int lno; } ;
struct TYPE_13__ {int cno; int lno; TYPE_3__* ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ MARK ;
typedef TYPE_3__ EXF ;
typedef int EXCMD ;


 int ABSMARK1 ;


 int F_ISSET (TYPE_3__*,int ) ;
 int F_SET (TYPE_3__*,int ) ;
 int F_UNDO ;

 int abort () ;
 int log_backward (TYPE_1__*,TYPE_2__*) ;
 int log_forward (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ mark_set (TYPE_1__*,int ,TYPE_2__*,int) ;

int
ex_undo(SCR *sp, EXCMD *cmdp)
{
 EXF *ep;
 MARK m;





 m.lno = sp->lno;
 m.cno = sp->cno;
 if (mark_set(sp, ABSMARK1, &m, 1))
  return (1);







 ep = sp->ep;
 if (!F_ISSET(ep, F_UNDO)) {
  F_SET(ep, F_UNDO);
  ep->lundo = 129;
 }
 switch (ep->lundo) {
 case 130:
  if (log_forward(sp, &m))
   return (1);
  ep->lundo = 129;
  break;
 case 129:
  if (log_backward(sp, &m))
   return (1);
  ep->lundo = 130;
  break;
 case 128:
  abort();
 }
 sp->lno = m.lno;
 sp->cno = m.cno;
 return (0);
}
