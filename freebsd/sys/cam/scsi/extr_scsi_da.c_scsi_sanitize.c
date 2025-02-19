
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;
struct scsi_sanitize {int length; int control; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int CAM_DIR_OUT ;
 int SANITIZE ;
 int cam_fill_csio (struct ccb_scsiio*,scalar_t__,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,scalar_t__,int ,int,scalar_t__) ;
 int scsi_ulto2b (scalar_t__,int ) ;

void
scsi_sanitize(struct ccb_scsiio *csio, u_int32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       u_int8_t tag_action, u_int8_t byte2, u_int16_t control,
       u_int8_t *data_ptr, u_int32_t dxfer_len, u_int8_t sense_len,
       u_int32_t timeout)
{
 struct scsi_sanitize *scsi_cmd;

 scsi_cmd = (struct scsi_sanitize *)&csio->cdb_io.cdb_bytes;
 scsi_cmd->opcode = SANITIZE;
 scsi_cmd->byte2 = byte2;
 scsi_cmd->control = control;
 scsi_ulto2b(dxfer_len, scsi_cmd->length);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                  (dxfer_len > 0) ? CAM_DIR_OUT : CAM_DIR_NONE,
        tag_action,
        data_ptr,
        dxfer_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
