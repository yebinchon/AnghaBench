
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_load_unload {int eot_reten_load; int immediate; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int LOAD_UNLOAD ;
 int SLU_EOT ;
 int SLU_IMMED ;
 int SLU_LOAD ;
 int SLU_RETEN ;
 int bzero (struct scsi_load_unload*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;

void
scsi_load_unload(struct ccb_scsiio *csio, u_int32_t retries,
   void (*cbfcnp)(struct cam_periph *, union ccb *),
   u_int8_t tag_action, int immediate, int eot,
   int reten, int load, u_int8_t sense_len,
   u_int32_t timeout)
{
 struct scsi_load_unload *scsi_cmd;

 scsi_cmd = (struct scsi_load_unload *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = LOAD_UNLOAD;
 if (immediate)
  scsi_cmd->immediate = SLU_IMMED;
 if (eot)
  scsi_cmd->eot_reten_load |= SLU_EOT;
 if (reten)
  scsi_cmd->eot_reten_load |= SLU_RETEN;
 if (load)
  scsi_cmd->eot_reten_load |= SLU_LOAD;

 cam_fill_csio(csio, retries, cbfcnp, CAM_DIR_NONE, tag_action,
     ((void*)0), 0, sense_len, sizeof(*scsi_cmd), timeout);
}
