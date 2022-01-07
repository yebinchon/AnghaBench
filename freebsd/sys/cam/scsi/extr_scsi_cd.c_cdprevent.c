
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
struct cd_softc {int flags; } ;
struct cam_periph {scalar_t__ softc; int path; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int CD_FLAG_DISC_LOCKED ;
 int MSG_SIMPLE_Q_TAG ;
 int PR_ALLOW ;
 int PR_PREVENT ;
 int SF_NO_PRINT ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int) ;
 int scsi_prevent (int *,int ,int *,int ,int,int ,int) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static void
cdprevent(struct cam_periph *periph, int action)
{
 union ccb *ccb;
 struct cd_softc *softc;
 int error;

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("entering cdprevent\n"));

 softc = (struct cd_softc *)periph->softc;

 if (((action == PR_ALLOW)
   && (softc->flags & CD_FLAG_DISC_LOCKED) == 0)
  || ((action == PR_PREVENT)
   && (softc->flags & CD_FLAG_DISC_LOCKED) != 0)) {
  return;
 }

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_prevent(&ccb->csio,
                   cd_retry_count,
                 ((void*)0),
       MSG_SIMPLE_Q_TAG,
       action,
       SSD_FULL_SIZE,
                    60000);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                  SF_RETRY_UA|SF_NO_PRINT);

 xpt_release_ccb(ccb);

 if (error == 0) {
  if (action == PR_ALLOW)
   softc->flags &= ~CD_FLAG_DISC_LOCKED;
  else
   softc->flags |= CD_FLAG_DISC_LOCKED;
 }
}
