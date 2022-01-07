
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_scsiio {int dummy; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct cam_periph {int dummy; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int CD_MSF ;
 scalar_t__ CD_MSF_FORMAT ;
 int MSG_SIMPLE_Q_TAG ;
 scalar_t__ SF_RETRY_UA ;
 int SRTOC_FORMAT_TOC ;
 int SSD_FULL_SIZE ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,scalar_t__) ;
 int scsi_read_toc (struct ccb_scsiio*,int ,int *,int ,int ,int ,scalar_t__,int *,scalar_t__,int ,int) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdreadtoc(struct cam_periph *periph, u_int32_t mode, u_int32_t start,
   u_int8_t *data, u_int32_t len, u_int32_t sense_flags)
{
 u_int32_t ntoc;
        struct ccb_scsiio *csio;
 union ccb *ccb;
 int error;

 ntoc = len;
 error = 0;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 csio = &ccb->csio;

 scsi_read_toc(csio,
                      cd_retry_count,
                     ((void*)0),
                         MSG_SIMPLE_Q_TAG,
                          (mode == CD_MSF_FORMAT) ? CD_MSF : 0,
                     SRTOC_FORMAT_TOC,
                   start,
                       data,
                        len,
                        SSD_FULL_SIZE,
                      50000);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA | sense_flags);

 xpt_release_ccb(ccb);

 return(error);
}
