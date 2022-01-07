
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct scsi_allow_overwrite {int allow_overwrite; int partition; int logical_id; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int ALLOW_OVERWRITE ;
 int CAM_DIR_NONE ;
 int bzero (struct scsi_allow_overwrite*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_u64to8b (int ,int ) ;

void
scsi_allow_overwrite(struct ccb_scsiio *csio, u_int32_t retries,
     void (*cbfcnp)(struct cam_periph *, union ccb *),
     u_int8_t tag_action, int allow_overwrite, int partition,
     u_int64_t logical_id, u_int32_t sense_len, u_int32_t timeout)
{
 struct scsi_allow_overwrite *scsi_cmd;

 scsi_cmd = (struct scsi_allow_overwrite *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = ALLOW_OVERWRITE;

 scsi_cmd->allow_overwrite = allow_overwrite;
 scsi_cmd->partition = partition;
 scsi_u64to8b(logical_id, scsi_cmd->logical_id);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
        CAM_DIR_NONE,
        tag_action,
                     ((void*)0),
                      0,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
