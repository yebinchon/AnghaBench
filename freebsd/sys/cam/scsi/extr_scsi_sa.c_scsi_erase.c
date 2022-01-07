
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_erase {int lun_imm_long; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int ERASE ;
 int SE_IMMED ;
 int SE_LONG ;
 int bzero (struct scsi_erase*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;

void
scsi_erase(struct ccb_scsiio *csio, u_int32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    u_int8_t tag_action, int immediate, int long_erase,
    u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_erase *scsi_cmd;

 scsi_cmd = (struct scsi_erase *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = ERASE;

 if (immediate)
  scsi_cmd->lun_imm_long |= SE_IMMED;

 if (long_erase)
  scsi_cmd->lun_imm_long |= SE_LONG;

 cam_fill_csio(csio, retries, cbfcnp, CAM_DIR_NONE, tag_action, ((void*)0),
     0, sense_len, sizeof(*scsi_cmd), timeout);
}
