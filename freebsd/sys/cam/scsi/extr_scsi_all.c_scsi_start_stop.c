
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_start_stop_unit {int byte2; int how; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int CAM_HIGH_POWER ;
 int SSS_IMMED ;
 int SSS_LOEJ ;
 int SSS_START ;
 int START_STOP_UNIT ;
 int bzero (struct scsi_start_stop_unit*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int,int ,int *,int ,int ,int,int ) ;

void
scsi_start_stop(struct ccb_scsiio *csio, u_int32_t retries,
  void (*cbfcnp)(struct cam_periph *, union ccb *),
  u_int8_t tag_action, int start, int load_eject,
  int immediate, u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_start_stop_unit *scsi_cmd;
 int extra_flags = 0;

 scsi_cmd = (struct scsi_start_stop_unit *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = START_STOP_UNIT;
 if (start != 0) {
  scsi_cmd->how |= SSS_START;

  extra_flags |= CAM_HIGH_POWER;
 }
 if (load_eject != 0)
  scsi_cmd->how |= SSS_LOEJ;
 if (immediate != 0)
  scsi_cmd->byte2 |= SSS_IMMED;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_NONE | extra_flags,
        tag_action,
                    ((void*)0),
                     0,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
