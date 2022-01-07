
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
struct ch_softc {int device_stats; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 unsigned int CH_TIMEOUT_INITIALIZE_ELEMENT_STATUS ;
 int MSG_SIMPLE_Q_TAG ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cam_periph_runccb (union ccb*,int ,int ,int ,int ) ;
 int chdone ;
 int cherror ;
 int scsi_initialize_element_status (int *,int,int ,int ,int ,unsigned int) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
chielem(struct cam_periph *periph,
 unsigned int timeout)
{
 union ccb *ccb;
 struct ch_softc *softc;
 int error;

 if (!timeout) {
  timeout = CH_TIMEOUT_INITIALIZE_ELEMENT_STATUS;
 } else {
  timeout *= 1000;
 }

 error = 0;
 softc = (struct ch_softc *)periph->softc;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_initialize_element_status(&ccb->csio,
                        1,
                       chdone,
                           MSG_SIMPLE_Q_TAG,
                          SSD_FULL_SIZE,
                        timeout);

 error = cam_periph_runccb(ccb, cherror, CAM_RETRY_SELTO,
                      SF_RETRY_UA,
      softc->device_stats);

 xpt_release_ccb(ccb);

 return(error);
}
