
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdvi_softc {struct amdvi_ctrl* ctrl; } ;
struct TYPE_2__ {int base; int size; } ;
struct amdvi_ctrl {TYPE_1__ dte; } ;


 int PAGE_SIZE ;
 int amdvi_dte ;
 int vtophys (int ) ;

__attribute__((used)) static int
amdvi_init_dte(struct amdvi_softc *softc)
{
 struct amdvi_ctrl *ctrl;

 ctrl = softc->ctrl;
 ctrl->dte.base = vtophys(amdvi_dte) / PAGE_SIZE;
 ctrl->dte.size = 0x1FF;

 return (0);
}
