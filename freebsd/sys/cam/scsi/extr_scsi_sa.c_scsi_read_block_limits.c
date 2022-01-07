
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_read_block_limits_data {int dummy; } ;
struct scsi_read_block_limits {int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int READ_BLOCK_LIMITS ;
 int bzero (struct scsi_read_block_limits*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int,int ,int,int ) ;

void
scsi_read_block_limits(struct ccb_scsiio *csio, u_int32_t retries,
     void (*cbfcnp)(struct cam_periph *, union ccb *),
     u_int8_t tag_action,
     struct scsi_read_block_limits_data *rlimit_buf,
     u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_read_block_limits *scsi_cmd;

 cam_fill_csio(csio, retries, cbfcnp, CAM_DIR_IN, tag_action,
      (u_int8_t *)rlimit_buf, sizeof(*rlimit_buf), sense_len,
      sizeof(*scsi_cmd), timeout);

 scsi_cmd = (struct scsi_read_block_limits *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = READ_BLOCK_LIMITS;
}
