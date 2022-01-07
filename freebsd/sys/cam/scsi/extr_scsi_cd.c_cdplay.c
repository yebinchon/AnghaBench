
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_play_12 {scalar_t__ xfer_len; scalar_t__ blk_addr; int op_code; } ;
struct scsi_play_10 {scalar_t__ xfer_len; scalar_t__ blk_addr; int op_code; } ;
struct cam_periph {int dummy; } ;


 int CAM_DIR_NONE ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int MSG_SIMPLE_Q_TAG ;
 int PLAY_10 ;
 int PLAY_12 ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 int bzero (struct scsi_play_12*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,int *,int ,int ,int *,int ,int ,int,int) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int scsi_ulto2b (int,int*) ;
 int scsi_ulto4b (int,int*) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdplay(struct cam_periph *periph, u_int32_t blk, u_int32_t len)
{
 struct ccb_scsiio *csio;
 union ccb *ccb;
 int error;
 u_int8_t cdb_len;

 error = 0;
 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);
 csio = &ccb->csio;



 if ((len & 0xffff0000) == 0) {



  struct scsi_play_10 *scsi_cmd;

  scsi_cmd = (struct scsi_play_10 *)&csio->cdb_io.cdb_bytes;
  bzero (scsi_cmd, sizeof(*scsi_cmd));
  scsi_cmd->op_code = PLAY_10;
  scsi_ulto4b(blk, (u_int8_t *)scsi_cmd->blk_addr);
  scsi_ulto2b(len, (u_int8_t *)scsi_cmd->xfer_len);
  cdb_len = sizeof(*scsi_cmd);
 } else {
  struct scsi_play_12 *scsi_cmd;

  scsi_cmd = (struct scsi_play_12 *)&csio->cdb_io.cdb_bytes;
  bzero (scsi_cmd, sizeof(*scsi_cmd));
  scsi_cmd->op_code = PLAY_12;
  scsi_ulto4b(blk, (u_int8_t *)scsi_cmd->blk_addr);
  scsi_ulto4b(len, (u_int8_t *)scsi_cmd->xfer_len);
  cdb_len = sizeof(*scsi_cmd);
 }
 cam_fill_csio(csio,
                    cd_retry_count,
                  ((void*)0),
                 CAM_DIR_NONE,
        MSG_SIMPLE_Q_TAG,
                   ((void*)0),
                   0,
                     SSD_FULL_SIZE,
        cdb_len,
                   50 * 1000);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 xpt_release_ccb(ccb);

 return(error);
}
