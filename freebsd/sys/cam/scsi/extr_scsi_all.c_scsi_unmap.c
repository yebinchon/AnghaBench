
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct scsi_unmap {scalar_t__ control; int length; scalar_t__ group; int reserved; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_OUT ;
 int UNMAP ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto2b (int ,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_unmap(struct ccb_scsiio *csio, u_int32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    u_int8_t tag_action, u_int8_t byte2,
    u_int8_t *data_ptr, u_int16_t dxfer_len, u_int8_t sense_len,
    u_int32_t timeout)
{
 struct scsi_unmap *scsi_cmd;

 scsi_cmd = (struct scsi_unmap *)&csio->cdb_io.cdb_bytes;
 scsi_cmd->opcode = UNMAP;
 scsi_cmd->byte2 = byte2;
 scsi_ulto4b(0, scsi_cmd->reserved);
 scsi_cmd->group = 0;
 scsi_ulto2b(dxfer_len, scsi_cmd->length);
 scsi_cmd->control = 0;

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
