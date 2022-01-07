
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_per_res_out {int action; int scope_type; int length; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_OUT ;
 int PERSISTENT_RES_OUT ;
 int bzero (struct scsi_per_res_out*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int,int,int) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_persistent_reserve_out(struct ccb_scsiio *csio, uint32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       uint8_t tag_action, int service_action,
       int scope, int res_type, uint8_t *data_ptr,
       uint32_t dxfer_len, int sense_len, int timeout)
{
 struct scsi_per_res_out *scsi_cmd;

 scsi_cmd = (struct scsi_per_res_out *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = PERSISTENT_RES_OUT;
 scsi_cmd->action = service_action;
 scsi_cmd->scope_type = scope | res_type;
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
