
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iflags; } ;
typedef int SCR ;
typedef TYPE_1__ EXCMD ;


 int E_C_FORCE ;
 int FL_ISSET (int ,int ) ;
 int F_SET (int *,int ) ;
 int SC_EXIT ;
 int SC_EXIT_FORCE ;
 int WQ ;
 scalar_t__ ex_ncheck (int *,int) ;
 scalar_t__ exwr (int *,TYPE_1__*,int ) ;
 scalar_t__ file_m3 (int *,int ) ;

int
ex_wq(SCR *sp, EXCMD *cmdp)
{
 int force;

 if (exwr(sp, cmdp, WQ))
  return (1);
 if (file_m3(sp, 0))
  return (1);

 force = FL_ISSET(cmdp->iflags, E_C_FORCE);

 if (ex_ncheck(sp, force))
  return (1);

 F_SET(sp, force ? SC_EXIT_FORCE : SC_EXIT);
 return (0);
}
