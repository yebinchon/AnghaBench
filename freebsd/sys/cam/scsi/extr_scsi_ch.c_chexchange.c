
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
typedef int u_int16_t ;
struct changer_exchange {size_t ce_srctype; size_t ce_fdsttype; size_t ce_sdsttype; int ce_srcunit; int ce_fdstunit; int ce_sdstunit; int ce_flags; } ;
struct ch_softc {int* sc_counts; int* sc_exchangemask; int* sc_firsts; int device_stats; int sc_picker; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int CE_INVERT1 ;
 int CE_INVERT2 ;
 size_t CHET_DT ;
 int CH_TIMEOUT_EXCHANGE_MEDIUM ;
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
 int scsi_exchange_medium (int *,int,int ,int ,int ,int,int,int,int ,int ,int ,int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
chexchange(struct cam_periph *periph, struct changer_exchange *ce)
{
 struct ch_softc *softc;
 u_int16_t src, dst1, dst2;
 union ccb *ccb;
 int error;

 error = 0;
 softc = (struct ch_softc *)periph->softc;



 if ((ce->ce_srctype > CHET_DT) || (ce->ce_fdsttype > CHET_DT) ||
     (ce->ce_sdsttype > CHET_DT))
  return (EINVAL);
 if ((ce->ce_srcunit > (softc->sc_counts[ce->ce_srctype] - 1)) ||
     (ce->ce_fdstunit > (softc->sc_counts[ce->ce_fdsttype] - 1)) ||
     (ce->ce_sdstunit > (softc->sc_counts[ce->ce_sdsttype] - 1)))
  return (ENODEV);




 if (((softc->sc_exchangemask[ce->ce_srctype] &
      (1 << ce->ce_fdsttype)) == 0) ||
     ((softc->sc_exchangemask[ce->ce_fdsttype] &
      (1 << ce->ce_sdsttype)) == 0))
  return (ENODEV);




 src = softc->sc_firsts[ce->ce_srctype] + ce->ce_srcunit;
 dst1 = softc->sc_firsts[ce->ce_fdsttype] + ce->ce_fdstunit;
 dst2 = softc->sc_firsts[ce->ce_sdsttype] + ce->ce_sdstunit;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_exchange_medium(&ccb->csio,
                      1,
                     chdone,
                         MSG_SIMPLE_Q_TAG,
                  softc->sc_picker,
                  src,
                   dst1,
                   dst2,
                      (ce->ce_flags & CE_INVERT1) ?
                      TRUE : FALSE,
                      (ce->ce_flags & CE_INVERT2) ?
                      TRUE : FALSE,
                        SSD_FULL_SIZE,
                      CH_TIMEOUT_EXCHANGE_MEDIUM);

 error = cam_periph_runccb(ccb, cherror, CAM_RETRY_SELTO,
                      SF_RETRY_UA,
      softc->device_stats);

 xpt_release_ccb(ccb);

 return(error);
}
