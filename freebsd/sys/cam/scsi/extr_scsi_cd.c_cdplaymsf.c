
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef void* u_int32_t ;
struct scsi_play_msf {void* end_f; void* end_s; void* end_m; void* start_f; void* start_s; void* start_m; int op_code; } ;
struct cam_periph {int dummy; } ;


 int CAM_DIR_NONE ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int MSG_SIMPLE_Q_TAG ;
 int PLAY_MSF ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 int bzero (struct scsi_play_msf*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,int *,int ,int ,int *,int ,int ,int,int) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdplaymsf(struct cam_periph *periph, u_int32_t startm, u_int32_t starts,
   u_int32_t startf, u_int32_t endm, u_int32_t ends, u_int32_t endf)
{
 struct scsi_play_msf *scsi_cmd;
        struct ccb_scsiio *csio;
 union ccb *ccb;
 int error;

 error = 0;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 csio = &ccb->csio;

 cam_fill_csio(csio,
                      cd_retry_count,
                     ((void*)0),
                    CAM_DIR_NONE,
                         MSG_SIMPLE_Q_TAG,
                       ((void*)0),
                        0,
                        SSD_FULL_SIZE,
        sizeof(struct scsi_play_msf),
                      50000);

 scsi_cmd = (struct scsi_play_msf *)&csio->cdb_io.cdb_bytes;
 bzero (scsi_cmd, sizeof(*scsi_cmd));

        scsi_cmd->op_code = PLAY_MSF;
        scsi_cmd->start_m = startm;
        scsi_cmd->start_s = starts;
        scsi_cmd->start_f = startf;
        scsi_cmd->end_m = endm;
        scsi_cmd->end_s = ends;
        scsi_cmd->end_f = endf;

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 xpt_release_ccb(ccb);

 return(error);
}
