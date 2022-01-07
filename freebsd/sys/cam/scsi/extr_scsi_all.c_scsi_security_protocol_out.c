
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_security_protocol_out {int byte4; int length; int security_protocol_specific; int security_protocol; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_OUT ;
 int SECURITY_PROTOCOL_OUT ;
 int bzero (struct scsi_security_protocol_out*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int,int,int) ;
 int scsi_ulto2b (int ,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_security_protocol_out(struct ccb_scsiio *csio, uint32_t retries,
      void (*cbfcnp)(struct cam_periph *, union ccb *),
      uint8_t tag_action, uint32_t security_protocol,
      uint32_t security_protocol_specific, int byte4,
      uint8_t *data_ptr, uint32_t dxfer_len, int sense_len,
      int timeout)
{
 struct scsi_security_protocol_out *scsi_cmd;

 scsi_cmd = (struct scsi_security_protocol_out *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = SECURITY_PROTOCOL_OUT;

 scsi_cmd->security_protocol = security_protocol;
 scsi_ulto2b(security_protocol_specific,
      scsi_cmd->security_protocol_specific);
 scsi_cmd->byte4 = byte4;
 scsi_ulto4b(dxfer_len, scsi_cmd->length);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_OUT,
        tag_action,
        data_ptr,
        dxfer_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
