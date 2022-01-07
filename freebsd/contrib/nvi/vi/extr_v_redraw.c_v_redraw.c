
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_6__ {TYPE_1__* gp; } ;
struct TYPE_5__ {int (* scr_refresh ) (TYPE_2__*,int) ;} ;
typedef TYPE_2__ SCR ;


 int stub1 (TYPE_2__*,int) ;

int
v_redraw(SCR *sp, VICMD *vp)
{
 return (sp->gp->scr_refresh(sp, 1));
}
