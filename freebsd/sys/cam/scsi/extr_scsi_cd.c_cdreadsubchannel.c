
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct scsi_read_subchannel {int track; scalar_t__ control; scalar_t__ data_len; scalar_t__ subchan_format; int byte2; int byte1; int op_code; } ;
struct cd_sub_channel_info {int dummy; } ;
struct cam_periph {int dummy; } ;


 int CAM_DIR_IN ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int CD_MSF ;
 scalar_t__ CD_MSF_FORMAT ;
 int MSG_SIMPLE_Q_TAG ;
 int READ_SUBCHANNEL ;
 int SF_RETRY_UA ;
 int SRS_SUBQ ;
 int SSD_FULL_SIZE ;
 int bzero (struct scsi_read_subchannel*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,int *,int ,int ,int *,scalar_t__,int ,int,int) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int scsi_ulto2b (scalar_t__,int *) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdreadsubchannel(struct cam_periph *periph, u_int32_t mode,
   u_int32_t format, int track,
   struct cd_sub_channel_info *data, u_int32_t len)
{
 struct scsi_read_subchannel *scsi_cmd;
        struct ccb_scsiio *csio;
 union ccb *ccb;
 int error;

 error = 0;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 csio = &ccb->csio;

 cam_fill_csio(csio,
                      cd_retry_count,
                     ((void*)0),
                    CAM_DIR_IN,
                         MSG_SIMPLE_Q_TAG,
                       (u_int8_t *)data,
                        len,
                        SSD_FULL_SIZE,
        sizeof(struct scsi_read_subchannel),
                      50000);

 scsi_cmd = (struct scsi_read_subchannel *)&csio->cdb_io.cdb_bytes;
 bzero (scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->op_code = READ_SUBCHANNEL;
 if (mode == CD_MSF_FORMAT)
  scsi_cmd->byte1 |= CD_MSF;
 scsi_cmd->byte2 = SRS_SUBQ;
 scsi_cmd->subchan_format = format;
 scsi_cmd->track = track;
 scsi_ulto2b(len, (u_int8_t *)scsi_cmd->data_len);
 scsi_cmd->control = 0;

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 xpt_release_ccb(ccb);

 return(error);
}
