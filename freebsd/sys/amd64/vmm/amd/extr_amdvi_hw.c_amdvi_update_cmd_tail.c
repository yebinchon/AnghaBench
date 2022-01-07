
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int dev; int total_cmd; int cmd_max; struct amdvi_ctrl* ctrl; int * cmd; } ;
struct amdvi_ctrl {int cmd_head; int cmd_tail; } ;
struct amdvi_cmd {int dummy; } ;


 int KASSERT (int ,char*) ;
 int MOD_INC (int ,int,int ) ;
 int device_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void
amdvi_update_cmd_tail(struct amdvi_softc *softc)
{
 struct amdvi_ctrl *ctrl;
 int size;

 size = sizeof(struct amdvi_cmd);
 KASSERT(softc->cmd != ((void*)0), ("cmd is NULL"));

 ctrl = softc->ctrl;
 KASSERT(ctrl != ((void*)0), ("ctrl is NULL"));

 ctrl->cmd_tail = MOD_INC(ctrl->cmd_tail, size, softc->cmd_max);
 softc->total_cmd++;







}
