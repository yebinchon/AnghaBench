
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_tape_locate {int blkaddr; int byte1; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int LOCATE ;
 int SA_SPOS_BT ;
 int bzero (struct scsi_tape_locate*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_set_position(struct ccb_scsiio *csio, u_int32_t retries,
     void (*cbfcnp)(struct cam_periph *, union ccb *),
     u_int8_t tag_action, int hardsoft, u_int32_t blkno,
     u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_tape_locate *scmd;

 cam_fill_csio(csio, retries, cbfcnp, CAM_DIR_NONE, tag_action,
     (u_int8_t *)((void*)0), 0, sense_len, sizeof(*scmd), timeout);
 scmd = (struct scsi_tape_locate *)&csio->cdb_io.cdb_bytes;
 bzero(scmd, sizeof(*scmd));
 scmd->opcode = LOCATE;
 if (hardsoft)
  scmd->byte1 |= SA_SPOS_BT;
 scsi_ulto4b(blkno, scmd->blkaddr);
}
