
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int iflags; } ;
struct TYPE_12__ {int ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXCMD ;


 int E_C_FORCE ;
 int FL_ISSET (int ,int ) ;
 scalar_t__ F_ISSET (int ,int ) ;
 int F_MODIFIED ;
 int F_SET (TYPE_1__*,int ) ;
 int NEEDFILE (TYPE_1__*,TYPE_2__*) ;
 int SC_EXIT ;
 int SC_EXIT_FORCE ;
 int XIT ;
 scalar_t__ ex_ncheck (TYPE_1__*,int) ;
 scalar_t__ exwr (TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ file_m3 (TYPE_1__*,int ) ;

int
ex_xit(SCR *sp, EXCMD *cmdp)
{
 int force;

 NEEDFILE(sp, cmdp);

 if (F_ISSET(sp->ep, F_MODIFIED) && exwr(sp, cmdp, XIT))
  return (1);
 if (file_m3(sp, 0))
  return (1);

 force = FL_ISSET(cmdp->iflags, E_C_FORCE);

 if (ex_ncheck(sp, force))
  return (1);

 F_SET(sp, force ? SC_EXIT_FORCE : SC_EXIT);
 return (0);
}
