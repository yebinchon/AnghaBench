
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int refcnt; } ;
struct TYPE_5__ {int frp; TYPE_2__* ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXF ;


 int FR_TMPEXIT ;
 scalar_t__ F_ISSET (int ,int ) ;
 int M_ERR ;
 int msgq (TYPE_1__*,int ,char*) ;

int
file_m3(
 SCR *sp,
 int force)
{
 EXF *ep;

 ep = sp->ep;


 if (ep == ((void*)0))
  return (0);
 if (F_ISSET(sp->frp, FR_TMPEXIT) && ep->refcnt <= 1 && !force) {
  msgq(sp, M_ERR,
      "265|File is a temporary; exit will discard modifications");
  return (1);
 }
 return (0);
}
