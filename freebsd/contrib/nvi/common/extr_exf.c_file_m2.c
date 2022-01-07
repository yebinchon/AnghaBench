
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int refcnt; } ;
struct TYPE_7__ {TYPE_2__* ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXF ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_MODIFIED ;
 int M_ERR ;
 int file_m3 (TYPE_1__*,int) ;
 int msgq (TYPE_1__*,int ,char*) ;

int
file_m2(
 SCR *sp,
 int force)
{
 EXF *ep;

 ep = sp->ep;


 if (ep == ((void*)0))
  return (0);





 if (F_ISSET(ep, F_MODIFIED) && ep->refcnt <= 1 && !force) {
  msgq(sp, M_ERR,
"264|File modified since last complete write; write or use ! to override");
  return (1);
 }

 return (file_m3(sp, force));
}
