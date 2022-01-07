
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
typedef int u_int16_t ;
struct changer_position {size_t cp_type; int cp_unit; int cp_flags; } ;
struct ch_softc {int* sc_counts; int* sc_firsts; int device_stats; int sc_picker; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 size_t CHET_DT ;
 int CH_TIMEOUT_POSITION_TO_ELEMENT ;
 int CP_INVERT ;
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
 int scsi_position_to_element (int *,int,int ,int ,int ,int,int ,int ,int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
chposition(struct cam_periph *periph, struct changer_position *cp)
{
 struct ch_softc *softc;
 u_int16_t dst;
 union ccb *ccb;
 int error;

 error = 0;
 softc = (struct ch_softc *)periph->softc;




 if (cp->cp_type > CHET_DT)
  return (EINVAL);
 if (cp->cp_unit > (softc->sc_counts[cp->cp_type] - 1))
  return (ENODEV);




 dst = softc->sc_firsts[cp->cp_type] + cp->cp_unit;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_position_to_element(&ccb->csio,
                   1,
                  chdone,
                      MSG_SIMPLE_Q_TAG,
               softc->sc_picker,
               dst,
                  (cp->cp_flags & CP_INVERT) ?
           TRUE : FALSE,
                     SSD_FULL_SIZE,
                   CH_TIMEOUT_POSITION_TO_ELEMENT);

 error = cam_periph_runccb(ccb, cherror, CAM_RETRY_SELTO,
                      SF_RETRY_UA,
      softc->device_stats);

 xpt_release_ccb(ccb);

 return(error);
}
