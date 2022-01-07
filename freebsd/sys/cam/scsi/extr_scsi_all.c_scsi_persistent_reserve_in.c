
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_per_res_in {int action; int length; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int PERSISTENT_RES_IN ;
 int bzero (struct scsi_per_res_in*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int,int,int) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_persistent_reserve_in(struct ccb_scsiio *csio, uint32_t retries,
      void (*cbfcnp)(struct cam_periph *, union ccb *),
      uint8_t tag_action, int service_action,
      uint8_t *data_ptr, uint32_t dxfer_len, int sense_len,
      int timeout)
{
 struct scsi_per_res_in *scsi_cmd;

 scsi_cmd = (struct scsi_per_res_in *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = PERSISTENT_RES_IN;
 scsi_cmd->action = service_action;
 scsi_ulto2b(dxfer_len, scsi_cmd->length);

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
}
