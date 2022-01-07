
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
typedef int u_int32_t ;
struct cam_periph {int dummy; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int FALSE ;
 int MSG_SIMPLE_Q_TAG ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int scsi_start_stop (int *,int ,int *,int ,int ,int ,int ,int ,int) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdstopunit(struct cam_periph *periph, u_int32_t eject)
{
 union ccb *ccb;
 int error;

 error = 0;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_start_stop(&ccb->csio,
                 cd_retry_count,
                ((void*)0),
                    MSG_SIMPLE_Q_TAG,
               FALSE,
                    eject,
                   FALSE,
                   SSD_FULL_SIZE,
                 50000);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 xpt_release_ccb(ccb);

 return(error);
}
