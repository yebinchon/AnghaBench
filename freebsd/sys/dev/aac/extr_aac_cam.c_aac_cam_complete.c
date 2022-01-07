
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ func_code; int status; } ;
struct TYPE_5__ {int sense_len; int sense_resid; int sense_data; int scsi_status; } ;
union ccb {TYPE_3__ ccb_h; TYPE_2__ csio; } ;
struct scsi_sense_data {int dummy; } ;
struct aac_srb_response {scalar_t__ fib_status; int sense_len; int * sense; int scsi_status; int srb_status; } ;
struct aac_softc {int aac_dev; } ;
struct aac_command {TYPE_1__* cm_fib; union ccb* cm_private; struct aac_softc* cm_sc; } ;
struct TYPE_4__ {int * data; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_REQ_ABORTED ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 scalar_t__ XPT_SCSI_IO ;
 int aac_cam_fix_inquiry (struct aac_softc*,union ccb*) ;
 int aac_release_command (struct aac_command*) ;
 int bcopy (int *,int *,int ) ;
 int bzero (int *,int) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int min (int,int) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
aac_cam_complete(struct aac_command *cm)
{
 union ccb *ccb;
 struct aac_srb_response *srbr;
 struct aac_softc *sc;
 int sense_returned;

 sc = cm->cm_sc;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 ccb = cm->cm_private;
 srbr = (struct aac_srb_response *)&cm->cm_fib->data[0];

 if (srbr->fib_status != 0) {
  device_printf(sc->aac_dev, "Passthru FIB failed!\n");
  ccb->ccb_h.status = CAM_REQ_ABORTED;
 } else {




  ccb->ccb_h.status = srbr->srb_status;


  if (ccb->ccb_h.func_code == XPT_SCSI_IO) {
   ccb->csio.scsi_status = srbr->scsi_status;


   if (srbr->sense_len) {
    sense_returned = srbr->sense_len;
    if (sense_returned < ccb->csio.sense_len)
     ccb->csio.sense_resid =
        ccb->csio.sense_len -
        sense_returned;
     else
         ccb->csio.sense_resid = 0;
    bzero(&ccb->csio.sense_data,
        sizeof(struct scsi_sense_data));
    bcopy(&srbr->sense[0], &ccb->csio.sense_data,
        min(ccb->csio.sense_len, sense_returned));
    ccb->ccb_h.status |= CAM_AUTOSNS_VALID;

   }

   aac_cam_fix_inquiry(sc, ccb);
  }
 }

 aac_release_command(cm);
 xpt_done(ccb);
}
