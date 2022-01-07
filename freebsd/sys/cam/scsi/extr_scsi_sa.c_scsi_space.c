
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_space {scalar_t__ control; int count; int code; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;
typedef int scsi_space_code ;


 int CAM_DIR_NONE ;
 int SPACE ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto3b (int ,int ) ;

void
scsi_space(struct ccb_scsiio *csio, u_int32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    u_int8_t tag_action, scsi_space_code code,
    u_int32_t count, u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_space *scsi_cmd;

 scsi_cmd = (struct scsi_space *)&csio->cdb_io.cdb_bytes;
 scsi_cmd->opcode = SPACE;
 scsi_cmd->code = code;
 scsi_ulto3b(count, scsi_cmd->count);
 scsi_cmd->control = 0;

 cam_fill_csio(csio, retries, cbfcnp, CAM_DIR_NONE, tag_action, ((void*)0),
     0, sense_len, sizeof(*scsi_cmd), timeout);
}
