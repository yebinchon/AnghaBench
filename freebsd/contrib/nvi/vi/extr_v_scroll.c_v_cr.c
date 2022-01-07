
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


 scalar_t__ F_ISSET (int *,int ) ;
 int SC_COMEDIT ;
 int SC_SCRIPT ;
 int sscr_exec (int *,int ) ;
 int v_down (int *,TYPE_2__*) ;
 int v_ecl_exec (int *) ;

int
v_cr(SCR *sp, VICMD *vp)
{

 if (F_ISSET(sp, SC_COMEDIT))
  return (v_ecl_exec(sp));


 if (F_ISSET(sp, SC_SCRIPT))
  return (sscr_exec(sp, vp->m_start.lno));


 return (v_down(sp, vp));
}
