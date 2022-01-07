
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iflags; } ;
typedef int SCR ;
typedef TYPE_1__ EXCMD ;


 int E_C_FORCE ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int GLOBAL ;
 int V ;
 int ex_g_setup (int *,TYPE_1__*,int ) ;

int
ex_global(SCR *sp, EXCMD *cmdp)
{
 return (ex_g_setup(sp,
     cmdp, FL_ISSET(cmdp->iflags, E_C_FORCE) ? V : GLOBAL));
}
