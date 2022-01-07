
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lno; } ;
struct TYPE_6__ {TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;
typedef int EXCMD ;


 int C_SUBAGAIN ;
 int L (char*) ;
 int argv_exp0 (int *,int *,int ,int) ;
 int ex_cinit (int *,int *,int ,int,int ,int ,int) ;
 int v_exec_ex (int *,TYPE_2__*,int *) ;

int
v_again(SCR *sp, VICMD *vp)
{
 EXCMD cmd;

 ex_cinit(sp, &cmd, C_SUBAGAIN, 2, vp->m_start.lno, vp->m_start.lno, 1);
 argv_exp0(sp, &cmd, L(""), 1);
 return (v_exec_ex(sp, vp, &cmd));
}
