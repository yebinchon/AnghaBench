
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int event_max; int dev; struct amdvi_event* event; struct amdvi_ctrl* ctrl; } ;
struct amdvi_event {int opcode; } ;
struct amdvi_ctrl {int evt_head; int evt_tail; } ;


 int MOD_INC (int,int,int) ;
 int amdvi_decode_evt (struct amdvi_event*) ;
 int device_printf (int ,char*,int,int,int ) ;

__attribute__((used)) static void
amdvi_print_events(struct amdvi_softc *softc)
{
 struct amdvi_ctrl *ctrl;
 struct amdvi_event *event;
 int i, size;

 ctrl = softc->ctrl;
 size = sizeof(struct amdvi_event);
 for (i = 0; i < softc->event_max; i++) {
  event = &softc->event[ctrl->evt_head / size];
  if (!event->opcode)
   break;
  device_printf(softc->dev, "\t[Event%d: Head:0x%x Tail:0x%x]\n",
      i, ctrl->evt_head, ctrl->evt_tail);
  amdvi_decode_evt(event);
  ctrl->evt_head = MOD_INC(ctrl->evt_head, size,
      softc->event_max);
 }
}
