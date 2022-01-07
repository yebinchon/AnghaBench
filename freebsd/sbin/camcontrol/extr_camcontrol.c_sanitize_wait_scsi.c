
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_sense_data {int dummy; } ;
struct TYPE_6__ {scalar_t__ sense_resid; scalar_t__ sense_len; struct scsi_sense_data sense_data; } ;
struct TYPE_5__ {int status; int flags; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef int uint8_t ;
typedef int u_int ;
struct cam_device {int dummy; } ;
typedef int cam_status ;


 int CAM_ARG_VERBOSE ;
 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_QFRZDIS ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (TYPE_2__*) ;
 int SSD_FULL_SIZE ;
 int SSD_KEY_NOT_READY ;
 int arglist ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_send_ccb (struct cam_device*,union ccb*) ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,int,int,int) ;
 int scsi_2btoul (int *) ;
 int scsi_extract_sense_len (struct scsi_sense_data*,scalar_t__,int*,int*,int*,int*,int) ;
 scalar_t__ scsi_get_sks (struct scsi_sense_data*,scalar_t__,int *) ;
 int scsi_sense_print (struct cam_device*,TYPE_2__*,int ) ;
 int scsi_test_unit_ready (TYPE_2__*,int ,int *,int,int ,int) ;
 int sleep (int) ;
 int stderr ;
 int stdout ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
sanitize_wait_scsi(struct cam_device *device, union ccb *ccb, int task_attr, int quiet)
{
 int warnings = 0, retval;
 cam_status status;
 u_int val, perc;

 do {
  CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);






  scsi_test_unit_ready(&ccb->csio,
                       0,
                      ((void*)0),
                          task_attr,
                         SSD_FULL_SIZE,
                       5000);


  ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

  retval = cam_send_ccb(device, ccb);





  if (retval < 0) {
   warn("error sending TEST UNIT READY command");
   return (1);
  }

  status = ccb->ccb_h.status & CAM_STATUS_MASK;
  if ((status == CAM_SCSI_STATUS_ERROR) &&
      ((ccb->ccb_h.status & CAM_AUTOSNS_VALID) != 0)) {
   struct scsi_sense_data *sense;
   int error_code, sense_key, asc, ascq;

   sense = &ccb->csio.sense_data;
   scsi_extract_sense_len(sense, ccb->csio.sense_len -
       ccb->csio.sense_resid, &error_code, &sense_key,
       &asc, &ascq, 1);
   if ((sense_key == SSD_KEY_NOT_READY)
    && (asc == 0x04) && (ascq == 0x1b)) {
    uint8_t sks[3];

    if ((scsi_get_sks(sense, ccb->csio.sense_len -
         ccb->csio.sense_resid, sks) == 0)
     && (quiet == 0)) {
     val = scsi_2btoul(&sks[1]);
     perc = 10000 * val;
     fprintf(stdout,
         "Sanitizing: %u.%02u%% (%d/%d)\r",
         (perc / (0x10000 * 100)),
         ((perc / 0x10000) % 100),
         val, 0x10000);
     fflush(stdout);
    } else if ((quiet == 0) && (++warnings <= 1)) {
     warnx("Unexpected SCSI Sense Key "
           "Specific value returned "
           "during sanitize:");
     scsi_sense_print(device, &ccb->csio,
        stderr);
     warnx("Unable to print status "
           "information, but sanitze will "
           "proceed.");
     warnx("will exit when sanitize is "
           "complete");
    }
    sleep(1);
   } else {
    warnx("Unexpected SCSI error during sanitize");
    cam_error_print(device, ccb, CAM_ESF_ALL,
      CAM_EPF_ALL, stderr);
    return (1);
   }

  } else if (status != CAM_REQ_CMP && status != CAM_REQUEUE_REQ) {
   warnx("Unexpected CAM status %#x", status);
   if (arglist & CAM_ARG_VERBOSE)
    cam_error_print(device, ccb, CAM_ESF_ALL,
      CAM_EPF_ALL, stderr);
   return (1);
  }
 } while ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP);
 return (0);
}
