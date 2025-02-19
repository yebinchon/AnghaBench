
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ func_code; int flags; scalar_t__ target_lun; int status; } ;
struct TYPE_6__ {scalar_t__* cdb_ptr; scalar_t__* cdb_bytes; } ;
struct TYPE_7__ {int sense_len; int* data_ptr; TYPE_2__ cdb_io; int sense_data; int scsi_status; } ;
union ccb {TYPE_4__ ccb_h; TYPE_3__ csio; } ;
typedef scalar_t__ u_int8_t ;
struct scsi_sense_data {int dummy; } ;
struct aac_srb_response {int sense_len; scalar_t__ fib_status; int * sense; int scsi_status; int srb_status; } ;
struct aac_softc {int aac_feature_bits; int hint_flags; int aac_dev; } ;
struct aac_command {int cm_flags; TYPE_1__* cm_fib; union ccb* cm_ccb; struct aac_softc* cm_sc; } ;
struct TYPE_5__ {int * data; } ;


 int AAC_CMD_FASTRESP ;
 int AAC_CMD_RESET ;
 int AAC_SUPPL_SUPPORTED_JBOD ;
 int CAM_AUTOSNS_VALID ;
 int CAM_CDB_POINTER ;
 int CAM_DEV_NOT_THERE ;
 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_BUS_RESET ;
 int CAM_SEL_TIMEOUT ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 scalar_t__ INQUIRY ;
 int SCSI_STATUS_OK ;
 scalar_t__ T_DIRECT ;
 scalar_t__ T_NODEVICE ;
 scalar_t__ T_PROCESSOR ;
 scalar_t__ XPT_SCSI_IO ;
 int aacraid_release_command (struct aac_command*) ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,int) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
aac_cam_complete(struct aac_command *cm)
{
 union ccb *ccb;
 struct aac_srb_response *srbr;
 struct aac_softc *sc;

 sc = cm->cm_sc;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 ccb = cm->cm_ccb;
 srbr = (struct aac_srb_response *)&cm->cm_fib->data[0];

 if (cm->cm_flags & AAC_CMD_FASTRESP) {

  srbr->srb_status = CAM_REQ_CMP;
  srbr->scsi_status = SCSI_STATUS_OK;
  srbr->sense_len = 0;
 }

 if (cm->cm_flags & AAC_CMD_RESET) {
  ccb->ccb_h.status = CAM_SCSI_BUS_RESET;
 } else if (srbr->fib_status != 0) {
  device_printf(sc->aac_dev, "Passthru FIB failed!\n");
  ccb->ccb_h.status = CAM_REQ_ABORTED;
 } else {




  ccb->ccb_h.status = srbr->srb_status;


  if (ccb->ccb_h.func_code == XPT_SCSI_IO) {
   u_int8_t command, device;

   ccb->csio.scsi_status = srbr->scsi_status;


   if (srbr->sense_len) {
    int sense_len, scsi_sense_len;

    scsi_sense_len = sizeof(struct scsi_sense_data);
    bzero(&ccb->csio.sense_data, scsi_sense_len);
    sense_len = (srbr->sense_len >
        scsi_sense_len) ? scsi_sense_len :
        srbr->sense_len;
    bcopy(&srbr->sense[0], &ccb->csio.sense_data,
        srbr->sense_len);
    ccb->csio.sense_len = sense_len;
    ccb->ccb_h.status |= CAM_AUTOSNS_VALID;

   }


   if (ccb->ccb_h.flags & CAM_CDB_POINTER)
    command = ccb->csio.cdb_io.cdb_ptr[0];
   else
    command = ccb->csio.cdb_io.cdb_bytes[0];

   if (command == INQUIRY) {
    if (ccb->ccb_h.status == CAM_REQ_CMP) {
      device = ccb->csio.data_ptr[0] & 0x1f;




      if ((device == T_DIRECT &&
        !(sc->aac_feature_bits & AAC_SUPPL_SUPPORTED_JBOD)) ||
        (device == T_PROCESSOR))
        ccb->csio.data_ptr[0] =
       ((device & 0xe0) | T_NODEVICE);


      if (ccb->csio.data_ptr[0] & 0x20) {
     if (sc->hint_flags & 8) {

       ccb->csio.data_ptr[0] &= 0xdf;
     } else {

       ccb->csio.data_ptr[0] |= 0x10;
     }
      }
    } else if (ccb->ccb_h.status == CAM_SEL_TIMEOUT &&
      ccb->ccb_h.target_lun != 0) {

      ccb->ccb_h.status = CAM_DEV_NOT_THERE;
    }
   }
  }
 }

 aacraid_release_command(cm);
 xpt_done(ccb);
}
