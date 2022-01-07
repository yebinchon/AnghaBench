
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int total_cmd; int event_intr_cnt; int dev; struct amdvi_ctrl* ctrl; } ;
struct amdvi_ctrl {int status; int cmd_head; int cmd_tail; int evt_tail; int evt_head; } ;


 int AMDVI_STATUS_EV_INTR ;
 int AMDVI_STATUS_EV_OF ;
 int amdvi_print_events (struct amdvi_softc*) ;
 int device_printf (int ,char*,int ,int,int ,int ) ;
 int printf (char*,int ,int ,int ) ;

__attribute__((used)) static void
amdvi_event_intr(void *arg)
{
 struct amdvi_softc *softc;
 struct amdvi_ctrl *ctrl;

 softc = (struct amdvi_softc *)arg;
 ctrl = softc->ctrl;
 device_printf(softc->dev, "EVT INTR %ld Status:0x%x"
     " EVT Head:0x%x Tail:0x%x]\n", softc->event_intr_cnt++,
     ctrl->status, ctrl->evt_head, ctrl->evt_tail);
 printf("  [CMD Total 0x%lx] Tail:0x%x, Head:0x%x.\n",
     softc->total_cmd, ctrl->cmd_tail, ctrl->cmd_head);

 amdvi_print_events(softc);
 ctrl->status &= AMDVI_STATUS_EV_OF | AMDVI_STATUS_EV_INTR;
}
