
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int u_int32_t ;
struct scsi_set_speed {int writespeed; int readspeed; int opcode; } ;
struct cam_periph {int dummy; } ;


 int CAM_DIR_NONE ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int MSG_SIMPLE_Q_TAG ;
 int SET_CD_SPEED ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 int bzero (struct scsi_set_speed*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,int *,int ,int ,int *,int ,int ,int,int) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int scsi_ulto2b (int,int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdsetspeed(struct cam_periph *periph, u_int32_t rdspeed, u_int32_t wrspeed)
{
 struct scsi_set_speed *scsi_cmd;
 struct ccb_scsiio *csio;
 union ccb *ccb;
 int error;

 error = 0;
 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);
 csio = &ccb->csio;


 if (rdspeed < 177)
  rdspeed *= 177;
 if (wrspeed < 177)
  wrspeed *= 177;

 cam_fill_csio(csio,
                      cd_retry_count,
                     ((void*)0),
                    CAM_DIR_NONE,
                         MSG_SIMPLE_Q_TAG,
                       ((void*)0),
                        0,
                        SSD_FULL_SIZE,
        sizeof(struct scsi_set_speed),
                      50000);

 scsi_cmd = (struct scsi_set_speed *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = SET_CD_SPEED;
 scsi_ulto2b(rdspeed, scsi_cmd->readspeed);
 scsi_ulto2b(wrspeed, scsi_cmd->writespeed);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 xpt_release_ccb(ccb);

 return(error);
}
