
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lno; } ;
struct TYPE_7__ {int count; TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;
typedef int EXCMD ;


 int C_JOIN ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int VC_C1SET ;
 int ex_cinit (int *,int *,int ,int,int,int,int ) ;
 int v_exec_ex (int *,TYPE_2__*,int *) ;

int
v_join(SCR *sp, VICMD *vp)
{
 EXCMD cmd;
 int lno;
 lno = vp->m_start.lno + 1;
 if (F_ISSET(vp, VC_C1SET) && vp->count > 2)
  lno = vp->m_start.lno + (vp->count - 1);

 ex_cinit(sp, &cmd, C_JOIN, 2, vp->m_start.lno, lno, 0);
 return (v_exec_ex(sp, vp, &cmd));
}
