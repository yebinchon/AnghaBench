
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_write_filemarks {int num_marks; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int SWFMRK_IMMED ;
 int SWFMRK_WSMK ;
 int WRITE_FILEMARKS ;
 int bzero (struct scsi_write_filemarks*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto3b (int ,int ) ;

void
scsi_write_filemarks(struct ccb_scsiio *csio, u_int32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       u_int8_t tag_action, int immediate, int setmark,
       u_int32_t num_marks, u_int8_t sense_len,
       u_int32_t timeout)
{
 struct scsi_write_filemarks *scsi_cmd;

 scsi_cmd = (struct scsi_write_filemarks *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = WRITE_FILEMARKS;
 if (immediate)
  scsi_cmd->byte2 |= SWFMRK_IMMED;
 if (setmark)
  scsi_cmd->byte2 |= SWFMRK_WSMK;

 scsi_ulto3b(num_marks, scsi_cmd->num_marks);

 cam_fill_csio(csio, retries, cbfcnp, CAM_DIR_NONE, tag_action, ((void*)0),
     0, sense_len, sizeof(*scsi_cmd), timeout);
}
