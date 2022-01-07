
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cno; } ;
struct TYPE_7__ {TYPE_1__ m_stop; TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_8__ {int csearchdir; } ;
typedef int SCR ;


 int TSEARCH ;
 TYPE_5__* VIP (int *) ;
 scalar_t__ v_chF (int *,TYPE_2__*) ;

int
v_chT(SCR *sp, VICMD *vp)
{
 if (v_chF(sp, vp))
  return (1);






 ++vp->m_stop.cno;
 vp->m_final = vp->m_stop;

 VIP(sp)->csearchdir = TSEARCH;
 return (0);
}
