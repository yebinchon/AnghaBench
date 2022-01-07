
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;
typedef int EXCMD ;


 int C_TAGPOP ;
 int OOBLNO ;
 int ex_cinit (int *,int *,int ,int ,int ,int ,int ) ;
 int v_exec_ex (int *,int *,int *) ;

int
v_tagpop(SCR *sp, VICMD *vp)
{
 EXCMD cmd;

 ex_cinit(sp, &cmd, C_TAGPOP, 0, OOBLNO, 0, 0);
 return (v_exec_ex(sp, vp, &cmd));
}
