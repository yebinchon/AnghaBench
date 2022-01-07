
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int refcnt; } ;
struct TYPE_9__ {TYPE_2__* ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXF ;


 int FS_POSSIBLE ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_MODIFIED ;
 scalar_t__ LF_ISSET (int ) ;
 int M_ERR ;
 int O_AUTOWRITE ;
 scalar_t__ O_ISSET (TYPE_1__*,int ) ;
 scalar_t__ file_aw (TYPE_1__*,int) ;
 int file_m3 (TYPE_1__*,int) ;
 int msgq (TYPE_1__*,int ,char*) ;

int
file_m1(
 SCR *sp,
 int force,
 int flags)
{
 EXF *ep;

 ep = sp->ep;


 if (ep == ((void*)0))
  return (0);







 if (F_ISSET(ep, F_MODIFIED))
  if (O_ISSET(sp, O_AUTOWRITE)) {
   if (!force && file_aw(sp, flags))
    return (1);
  } else if (ep->refcnt <= 1 && !force) {
   msgq(sp, M_ERR, LF_ISSET(FS_POSSIBLE) ?
"262|File modified since last complete write; write or use ! to override" :
"263|File modified since last complete write; write or use :edit! to override");
   return (1);
  }

 return (file_m3(sp, force));
}
