
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_inquiry {int length; int page_code; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int INQUIRY ;
 int SI_EVPD ;
 int bzero (struct scsi_inquiry*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_inquiry(struct ccb_scsiio *csio, u_int32_t retries,
      void (*cbfcnp)(struct cam_periph *, union ccb *),
      u_int8_t tag_action, u_int8_t *inq_buf, u_int32_t inq_len,
      int evpd, u_int8_t page_code, u_int8_t sense_len,
      u_int32_t timeout)
{
 struct scsi_inquiry *scsi_cmd;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_IN,
        tag_action,
                    inq_buf,
                     inq_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);

 scsi_cmd = (struct scsi_inquiry *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = INQUIRY;
 if (evpd) {
  scsi_cmd->byte2 |= SI_EVPD;
  scsi_cmd->page_code = page_code;
 }
 scsi_ulto2b(inq_len, scsi_cmd->length);
}
