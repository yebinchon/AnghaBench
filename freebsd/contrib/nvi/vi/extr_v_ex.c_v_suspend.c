
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;
typedef int EXCMD ;


 int C_STOP ;
 int L (char*) ;
 int OOBLNO ;
 int SIZE (int ) ;
 int argv_exp0 (int *,int *,int ,int ) ;
 int ex_cinit (int *,int *,int ,int ,int ,int ,int ) ;
 int v_exec_ex (int *,int *,int *) ;

int
v_suspend(SCR *sp, VICMD *vp)
{
 EXCMD cmd;

 ex_cinit(sp, &cmd, C_STOP, 0, OOBLNO, OOBLNO, 0);
 argv_exp0(sp, &cmd, L("suspend"), SIZE(L("suspend")));
 return (v_exec_ex(sp, vp, &cmd));
}
