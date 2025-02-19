
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;
struct scsi_format_unit {int interleave; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int CAM_DIR_OUT ;
 int FORMAT_UNIT ;
 int cam_fill_csio (struct ccb_scsiio*,scalar_t__,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,scalar_t__,int ,int,scalar_t__) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_format_unit(struct ccb_scsiio *csio, u_int32_t retries,
   void (*cbfcnp)(struct cam_periph *, union ccb *),
   u_int8_t tag_action, u_int8_t byte2, u_int16_t ileave,
   u_int8_t *data_ptr, u_int32_t dxfer_len, u_int8_t sense_len,
   u_int32_t timeout)
{
 struct scsi_format_unit *scsi_cmd;

 scsi_cmd = (struct scsi_format_unit *)&csio->cdb_io.cdb_bytes;
 scsi_cmd->opcode = FORMAT_UNIT;
 scsi_cmd->byte2 = byte2;
 scsi_ulto2b(ileave, scsi_cmd->interleave);

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
