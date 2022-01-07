
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sense_data {int error_code; int extra_len; scalar_t__ add_sense_code_qual; scalar_t__ add_sense_code; scalar_t__ flags; } ;
struct TYPE_4__ {int sense_len; struct scsi_sense_data sense_data; scalar_t__ scsi_status; } ;
struct TYPE_3__ {int status; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef scalar_t__ u_int8_t ;
struct scsi_sense_data_fixed {int dummy; } ;
struct aac_softc {int dummy; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_SCSI_STATUS_ERROR ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 scalar_t__ SCSI_STATUS_CHECK_COND ;
 int SSD_CURRENT_ERROR ;
 int SSD_ERRCODE_VALID ;
 int bzero (struct scsi_sense_data*,int) ;
 int fwprintf (struct aac_softc*,char*,char*,scalar_t__) ;

__attribute__((used)) static void
aac_set_scsi_error(struct aac_softc *sc, union ccb *ccb, u_int8_t status,
 u_int8_t key, u_int8_t asc, u_int8_t ascq)
{




 struct scsi_sense_data *sense = &ccb->csio.sense_data;


 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "Error %d!", status);

 ccb->ccb_h.status = CAM_SCSI_STATUS_ERROR;
 ccb->csio.scsi_status = status;
 if (status == SCSI_STATUS_CHECK_COND) {
  ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
  bzero(&ccb->csio.sense_data, ccb->csio.sense_len);
  ccb->csio.sense_data.error_code =
   SSD_CURRENT_ERROR | SSD_ERRCODE_VALID;
  sense->flags = key;
  if (ccb->csio.sense_len >= 14) {
   sense->extra_len = 6;
   sense->add_sense_code = asc;
   sense->add_sense_code_qual = ascq;
  }
 }
}
