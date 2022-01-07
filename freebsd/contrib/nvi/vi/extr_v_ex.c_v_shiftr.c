
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int lno; } ;
struct TYPE_6__ {int lno; } ;
struct TYPE_8__ {TYPE_2__ m_stop; TYPE_1__ m_start; } ;
typedef TYPE_3__ VICMD ;
typedef int SCR ;
typedef int EXCMD ;


 int C_SHIFTR ;
 int L (char*) ;
 int argv_exp0 (int *,int *,int ,int) ;
 int ex_cinit (int *,int *,int ,int,int ,int ,int ) ;
 int v_exec_ex (int *,TYPE_3__*,int *) ;

int
v_shiftr(SCR *sp, VICMD *vp)
{
 EXCMD cmd;

 ex_cinit(sp, &cmd, C_SHIFTR, 2, vp->m_start.lno, vp->m_stop.lno, 0);
 argv_exp0(sp, &cmd, L(">"), 2);
 return (v_exec_ex(sp, vp, &cmd));
}
