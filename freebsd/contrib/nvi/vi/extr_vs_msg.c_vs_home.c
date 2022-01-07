
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* gp; } ;
struct TYPE_7__ {int (* scr_refresh ) (TYPE_2__*,int ) ;int (* scr_move ) (TYPE_2__*,int ,int ) ;} ;
typedef TYPE_2__ SCR ;


 int LASTLINE (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int stub2 (TYPE_2__*,int ) ;

void
vs_home(SCR *sp)
{
 (void)sp->gp->scr_move(sp, LASTLINE(sp), 0);
 (void)sp->gp->scr_refresh(sp, 0);
}
