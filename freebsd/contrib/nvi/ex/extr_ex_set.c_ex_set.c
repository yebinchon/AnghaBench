
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int argc; TYPE_1__* cmd; int argv; } ;
struct TYPE_4__ {int usage; } ;
typedef int SCR ;
typedef TYPE_2__ EXCMD ;


 int CHANGED_DISPLAY ;
 int opts_dump (int *,int ) ;
 int opts_set (int *,int ,int ) ;

int
ex_set(SCR *sp, EXCMD *cmdp)
{
 switch(cmdp->argc) {
 case 0:
  opts_dump(sp, CHANGED_DISPLAY);
  break;
 default:
  if (opts_set(sp, cmdp->argv, cmdp->cmd->usage))
   return (1);
  break;
 }
 return (0);
}
