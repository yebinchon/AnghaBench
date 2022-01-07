
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int dev; struct amdvi_ctrl* ctrl; } ;
struct amdvi_ctrl {int control; int cmd_head; int cmd_tail; } ;


 int AMDVI_CTRL_EN ;
 int KASSERT (struct amdvi_softc*,char*) ;
 scalar_t__ amdvi_cmp_wait (struct amdvi_softc*) ;
 int amdvi_dump_cmds (struct amdvi_softc*) ;
 int device_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void
amdvi_wait(struct amdvi_softc *softc)
{
 struct amdvi_ctrl *ctrl;
 int i;

 KASSERT(softc, ("softc is NULL"));

 ctrl = softc->ctrl;
 KASSERT(ctrl != ((void*)0), ("ctrl is NULL"));

 if ((ctrl->control & AMDVI_CTRL_EN) == 0)
  return;

 for (i = 0; i < 10; i++) {
  if (amdvi_cmp_wait(softc))
   return;
 }

 device_printf(softc->dev, "Error: completion failed"
        " tail:0x%x, head:0x%x.\n",
        ctrl->cmd_tail, ctrl->cmd_head);
 amdvi_dump_cmds(softc);
}
