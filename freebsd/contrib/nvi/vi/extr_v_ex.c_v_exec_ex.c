
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_6__ {TYPE_1__* cmd; } ;
struct TYPE_5__ {int (* fn ) (int *,TYPE_2__*) ;} ;
typedef int SCR ;
typedef TYPE_2__ EXCMD ;


 int stub1 (int *,TYPE_2__*) ;
 scalar_t__ v_ex_done (int *,int *) ;

__attribute__((used)) static int
v_exec_ex(SCR *sp, VICMD *vp, EXCMD *exp)
{
 int rval;

 rval = exp->cmd->fn(sp, exp);
 return (v_ex_done(sp, vp) || rval);
}
