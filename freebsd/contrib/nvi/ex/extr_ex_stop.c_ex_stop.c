
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int iflags; } ;
struct TYPE_10__ {TYPE_1__* gp; } ;
struct TYPE_9__ {scalar_t__ (* scr_suspend ) (TYPE_2__*,int*) ;} ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXCMD ;


 int EXM_NOSUSPEND ;
 int E_C_FORCE ;
 int FL_ISSET (int ,int ) ;
 int FS_ALL ;
 int ex_emsg (TYPE_2__*,int *,int ) ;
 scalar_t__ file_aw (TYPE_2__*,int ) ;
 scalar_t__ stub1 (TYPE_2__*,int*) ;

int
ex_stop(SCR *sp, EXCMD *cmdp)
{
 int allowed;


 if (!FL_ISSET(cmdp->iflags, E_C_FORCE) && file_aw(sp, FS_ALL))
  return (1);

 if (sp->gp->scr_suspend(sp, &allowed))
  return (1);
 if (!allowed)
  ex_emsg(sp, ((void*)0), EXM_NOSUSPEND);
 return (0);
}
