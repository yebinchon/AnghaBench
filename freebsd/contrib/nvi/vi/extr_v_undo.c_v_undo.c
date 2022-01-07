
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int lundo; int m_final; } ;
typedef TYPE_1__ VICMD ;
struct TYPE_14__ {int u_ccnt; } ;
struct TYPE_13__ {TYPE_1__* ep; int ccnt; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_1__ EXF ;




 int F_ISSET (TYPE_1__*,int ) ;
 int F_SET (TYPE_1__*,int ) ;
 int F_UNDO ;
 int VC_ISDOT ;
 TYPE_8__* VIP (TYPE_2__*) ;
 int abort () ;
 int log_backward (TYPE_2__*,int *) ;
 int log_forward (TYPE_2__*,int *) ;

int
v_undo(SCR *sp, VICMD *vp)
{
 EXF *ep;


 VIP(sp)->u_ccnt = sp->ccnt;
 ep = sp->ep;
 if (!F_ISSET(ep, F_UNDO)) {
  F_SET(ep, F_UNDO);
  ep->lundo = 129;
 } else if (!F_ISSET(vp, VC_ISDOT))
  ep->lundo = ep->lundo == 129 ? 128 : 129;

 switch (ep->lundo) {
 case 129:
  return (log_backward(sp, &vp->m_final));
 case 128:
  return (log_forward(sp, &vp->m_final));
 default:
  abort();
 }

}
