
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_move_medium {int invert; int dst; int src; int tea; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int MOVE_MEDIUM ;
 int MOVE_MEDIUM_INVERT ;
 int bzero (struct scsi_move_medium*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_move_medium(struct ccb_scsiio *csio, u_int32_t retries,
   void (*cbfcnp)(struct cam_periph *, union ccb *),
   u_int8_t tag_action, u_int32_t tea, u_int32_t src,
   u_int32_t dst, int invert, u_int8_t sense_len,
   u_int32_t timeout)
{
 struct scsi_move_medium *scsi_cmd;

 scsi_cmd = (struct scsi_move_medium *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = MOVE_MEDIUM;

 scsi_ulto2b(tea, scsi_cmd->tea);
 scsi_ulto2b(src, scsi_cmd->src);
 scsi_ulto2b(dst, scsi_cmd->dst);

 if (invert)
  scsi_cmd->invert |= MOVE_MEDIUM_INVERT;

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
