
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cno; } ;
struct TYPE_8__ {TYPE_1__ m_stop; TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_9__ {int csearchdir; } ;
typedef int SCR ;


 int ISMOTION (TYPE_2__*) ;
 TYPE_5__* VIP (int *) ;
 int tSEARCH ;
 scalar_t__ v_chf (int *,TYPE_2__*) ;

int
v_cht(SCR *sp, VICMD *vp)
{
 if (v_chf(sp, vp))
  return (1);






 --vp->m_stop.cno;





 if (!ISMOTION(vp))
  vp->m_final = vp->m_stop;

 VIP(sp)->csearchdir = tSEARCH;
 return (0);
}
