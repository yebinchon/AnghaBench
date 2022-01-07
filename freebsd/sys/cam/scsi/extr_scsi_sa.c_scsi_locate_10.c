
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_tape_locate {int partition; int blkaddr; int byte1; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;
typedef int int64_t ;


 int CAM_DIR_NONE ;
 int LOCATE ;
 int SA_SPOS_BT ;
 int SA_SPOS_CP ;
 int SA_SPOS_IMMED ;
 int bzero (struct scsi_tape_locate*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int,int,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_locate_10(struct ccb_scsiio *csio, u_int32_t retries,
        void (*cbfcnp)(struct cam_periph *, union ccb *),
        u_int8_t tag_action, int immed, int cp, int hard,
        int64_t partition, u_int32_t block_address,
        int sense_len, u_int32_t timeout)
{
 struct scsi_tape_locate *scmd;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
        CAM_DIR_NONE,
        tag_action,
                     ((void*)0),
                      0,
        sense_len,
        sizeof(*scmd),
        timeout);
 scmd = (struct scsi_tape_locate *)&csio->cdb_io.cdb_bytes;
 bzero(scmd, sizeof(*scmd));
 scmd->opcode = LOCATE;
 if (immed)
  scmd->byte1 |= SA_SPOS_IMMED;
 if (cp)
  scmd->byte1 |= SA_SPOS_CP;
 if (hard)
  scmd->byte1 |= SA_SPOS_BT;
 scsi_ulto4b(block_address, scmd->blkaddr);
 scmd->partition = partition;
}
