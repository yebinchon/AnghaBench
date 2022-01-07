
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lno; } ;
struct TYPE_5__ {TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
typedef int SCR ;


 int MSTAT_SHOWLAST ;
 int msgq_status (int *,int ,int ) ;

int
v_status(SCR *sp, VICMD *vp)
{
 (void)msgq_status(sp, vp->m_start.lno, MSTAT_SHOWLAST);
 return (0);
}
