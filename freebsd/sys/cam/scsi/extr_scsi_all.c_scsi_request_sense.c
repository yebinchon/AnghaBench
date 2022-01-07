
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_request_sense {int length; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int REQUEST_SENSE ;
 int bzero (struct scsi_request_sense*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,void*,int ,int ,int,int ) ;

void
scsi_request_sense(struct ccb_scsiio *csio, u_int32_t retries,
     void (*cbfcnp)(struct cam_periph *, union ccb *),
     void *data_ptr, u_int8_t dxfer_len, u_int8_t tag_action,
     u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_request_sense *scsi_cmd;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
        CAM_DIR_IN,
        tag_action,
        data_ptr,
        dxfer_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);

 scsi_cmd = (struct scsi_request_sense *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = REQUEST_SENSE;
 scsi_cmd->length = dxfer_len;
}
