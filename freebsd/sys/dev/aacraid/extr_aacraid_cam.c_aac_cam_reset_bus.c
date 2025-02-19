
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* entries; } ;
struct TYPE_8__ {TYPE_2__ sim_priv; int status; } ;
union ccb {TYPE_3__ ccb_h; } ;
typedef int u_int32_t ;
struct cam_sim {int dummy; } ;
struct aac_vmioctl {int * IoctlBuf; int IoctlCmd; scalar_t__ ObjId; int MethId; int ObjType; int Command; } ;
struct aac_softc {int aac_dev; int scsi_method_id; } ;
struct aac_resetbus {scalar_t__ BusNumber; } ;
struct aac_fib_header {int dummy; } ;
struct TYPE_9__ {int Size; int XferState; int Command; } ;
struct aac_fib {int * data; TYPE_4__ Header; } ;
struct aac_event {int ev_type; union ccb* ev_arg; int ev_callback; } ;
struct aac_command {scalar_t__ cm_datalen; int cm_timestamp; struct aac_fib* cm_fib; } ;
struct aac_cam {TYPE_5__* inf; } ;
struct TYPE_10__ {scalar_t__ BusNumber; struct aac_softc* aac_sc; } ;
struct TYPE_6__ {struct aac_cam* ptr; } ;


 int AAC_EVENT_CMFREE ;
 int AAC_FIBSTATE_ASYNC ;
 int AAC_FIBSTATE_EMPTY ;
 int AAC_FIBSTATE_FAST_RESPONSE ;
 int AAC_FIBSTATE_FROMHOST ;
 int AAC_FIBSTATE_HOSTOWNED ;
 int AAC_FIBSTATE_INITIALISED ;
 int AAC_FIBSTATE_NORM ;
 int AAC_FIBSTATE_REXPECTED ;
 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int CAM_RESRC_UNAVAIL ;
 int ContainerCommand ;
 int FT_DRIVE ;
 int M_AACRAIDCAM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ResetBus ;
 int VM_Ioctl ;
 int aac_cam_event ;
 int aacraid_add_event (struct aac_softc*,struct aac_event*) ;
 scalar_t__ aacraid_alloc_command (struct aac_softc*,struct aac_command**) ;
 int aacraid_release_command (struct aac_command*) ;
 scalar_t__ aacraid_wait_command (struct aac_command*) ;
 int bzero (struct aac_vmioctl*,int) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int device_printf (int ,char*) ;
 struct aac_event* malloc (int,int ,int) ;
 int printf (char*) ;
 int time_uptime ;
 int xpt_freeze_simq (struct cam_sim*,int) ;

__attribute__((used)) static u_int32_t
aac_cam_reset_bus(struct cam_sim *sim, union ccb *ccb)
{
 struct aac_command *cm;
 struct aac_fib *fib;
 struct aac_softc *sc;
 struct aac_cam *camsc;
 struct aac_vmioctl *vmi;
 struct aac_resetbus *rbc;
 u_int32_t rval;

 camsc = (struct aac_cam *)cam_sim_softc(sim);
 sc = camsc->inf->aac_sc;

 if (sc == ((void*)0)) {
  printf("aac: Null sc?\n");
  return (CAM_REQ_ABORTED);
 }

 if (aacraid_alloc_command(sc, &cm)) {
  struct aac_event *event;

  xpt_freeze_simq(sim, 1);
  ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
  ccb->ccb_h.sim_priv.entries[0].ptr = camsc;
  event = malloc(sizeof(struct aac_event), M_AACRAIDCAM,
   M_NOWAIT | M_ZERO);
  if (event == ((void*)0)) {
   device_printf(sc->aac_dev,
    "Warning, out of memory for event\n");
   return (CAM_REQ_ABORTED);
  }
  event->ev_callback = aac_cam_event;
  event->ev_arg = ccb;
  event->ev_type = AAC_EVENT_CMFREE;
  aacraid_add_event(sc, event);
  return (CAM_REQ_ABORTED);
 }

 fib = cm->cm_fib;
 cm->cm_timestamp = time_uptime;
 cm->cm_datalen = 0;

 fib->Header.Size =
  sizeof(struct aac_fib_header) + sizeof(struct aac_vmioctl);
 fib->Header.XferState =
  AAC_FIBSTATE_HOSTOWNED |
  AAC_FIBSTATE_INITIALISED |
  AAC_FIBSTATE_EMPTY |
  AAC_FIBSTATE_FROMHOST |
  AAC_FIBSTATE_REXPECTED |
  AAC_FIBSTATE_NORM |
  AAC_FIBSTATE_ASYNC |
  AAC_FIBSTATE_FAST_RESPONSE;
 fib->Header.Command = ContainerCommand;

 vmi = (struct aac_vmioctl *)&fib->data[0];
 bzero(vmi, sizeof(struct aac_vmioctl));

 vmi->Command = VM_Ioctl;
 vmi->ObjType = FT_DRIVE;
 vmi->MethId = sc->scsi_method_id;
 vmi->ObjId = 0;
 vmi->IoctlCmd = ResetBus;

 rbc = (struct aac_resetbus *)&vmi->IoctlBuf[0];
 rbc->BusNumber = camsc->inf->BusNumber - 1;

 if (aacraid_wait_command(cm) != 0) {
  device_printf(sc->aac_dev,"Error sending ResetBus command\n");
  rval = CAM_REQ_ABORTED;
 } else {
  rval = CAM_REQ_CMP;
 }
 aacraid_release_command(cm);
 return (rval);
}
