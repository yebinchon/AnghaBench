
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_set_capacity {int byte1; int cap_proportion; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int SET_CAPACITY ;
 int bzero (struct scsi_set_capacity*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_set_capacity(struct ccb_scsiio *csio, u_int32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    u_int8_t tag_action, int byte1, u_int32_t proportion,
    u_int32_t sense_len, u_int32_t timeout)
{
 struct scsi_set_capacity *scsi_cmd;

 scsi_cmd = (struct scsi_set_capacity *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = SET_CAPACITY;

 scsi_cmd->byte1 = byte1;
 scsi_ulto2b(proportion, scsi_cmd->cap_proportion);

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
