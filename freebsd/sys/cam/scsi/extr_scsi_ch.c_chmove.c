
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
typedef int u_int16_t ;
struct changer_move {size_t cm_fromtype; size_t cm_totype; int cm_fromunit; int cm_tounit; int cm_flags; } ;
struct ch_softc {int* sc_counts; int* sc_movemask; int* sc_firsts; int device_stats; int sc_picker; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 size_t CHET_DT ;
 int CH_TIMEOUT_MOVE_MEDIUM ;
 int CM_INVERT ;
 int EINVAL ;
 int ENODEV ;
 int FALSE ;
 int MSG_SIMPLE_Q_TAG ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 int TRUE ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cam_periph_runccb (union ccb*,int ,int ,int ,int ) ;
 int chdone ;
 int cherror ;
 int scsi_move_medium (int *,int,int ,int ,int ,int,int,int ,int ,int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
chmove(struct cam_periph *periph, struct changer_move *cm)
{
 struct ch_softc *softc;
 u_int16_t fromelem, toelem;
 union ccb *ccb;
 int error;

 error = 0;
 softc = (struct ch_softc *)periph->softc;




 if ((cm->cm_fromtype > CHET_DT) || (cm->cm_totype > CHET_DT))
  return (EINVAL);
 if ((cm->cm_fromunit > (softc->sc_counts[cm->cm_fromtype] - 1)) ||
     (cm->cm_tounit > (softc->sc_counts[cm->cm_totype] - 1)))
  return (ENODEV);




 if ((softc->sc_movemask[cm->cm_fromtype] & (1 << cm->cm_totype)) == 0)
  return (ENODEV);




 fromelem = softc->sc_firsts[cm->cm_fromtype] + cm->cm_fromunit;
 toelem = softc->sc_firsts[cm->cm_totype] + cm->cm_tounit;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_move_medium(&ccb->csio,
                  1,
                 chdone,
                     MSG_SIMPLE_Q_TAG,
              softc->sc_picker,
              fromelem,
              toelem,
                 (cm->cm_flags & CM_INVERT) ? TRUE : FALSE,
                    SSD_FULL_SIZE,
                  CH_TIMEOUT_MOVE_MEDIUM);

 error = cam_periph_runccb(ccb, cherror, CAM_RETRY_SELTO,
                      SF_RETRY_UA,
      softc->device_stats);

 xpt_release_ccb(ccb);

 return(error);
}
