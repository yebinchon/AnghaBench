
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ep; } ;
typedef TYPE_1__ SCR ;


 int F_ISSET (int ,int ) ;
 int F_MODIFIED ;
 int M_INFO ;
 int O_AUTOWRITE ;
 scalar_t__ O_ISSET (TYPE_1__*,int ) ;
 int O_READONLY ;
 int file_write (TYPE_1__*,int *,int *,int *,int) ;
 int msgq (TYPE_1__*,int ,char*) ;

int
file_aw(
 SCR *sp,
 int flags)
{
 if (!F_ISSET(sp->ep, F_MODIFIED))
  return (0);
 if (!O_ISSET(sp, O_AUTOWRITE))
  return (0);
 if (O_ISSET(sp, O_READONLY)) {
  msgq(sp, M_INFO,
      "266|File readonly, modifications not auto-written");
  return (1);
 }
 return (file_write(sp, ((void*)0), ((void*)0), ((void*)0), flags));
}
