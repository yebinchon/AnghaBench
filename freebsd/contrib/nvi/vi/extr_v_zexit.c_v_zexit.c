
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_7__ {int ep; } ;
typedef TYPE_1__ SCR ;


 int FS_ALL ;
 scalar_t__ F_ISSET (int ,int ) ;
 int F_MODIFIED ;
 int F_SET (TYPE_1__*,int ) ;
 int SC_EXIT ;
 scalar_t__ ex_ncheck (TYPE_1__*,int ) ;
 scalar_t__ file_m3 (TYPE_1__*,int ) ;
 scalar_t__ file_write (TYPE_1__*,int *,int *,int *,int ) ;

int
v_zexit(SCR *sp, VICMD *vp)
{

 if (F_ISSET(sp->ep, F_MODIFIED) &&
     file_write(sp, ((void*)0), ((void*)0), ((void*)0), FS_ALL))
  return (1);


 if (file_m3(sp, 0))
  return (1);


 if (ex_ncheck(sp, 0))
  return (1);

 F_SET(sp, SC_EXIT);
 return (0);
}
