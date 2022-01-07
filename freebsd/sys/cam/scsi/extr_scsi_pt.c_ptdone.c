
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int status; int path; scalar_t__ ccb_bp; } ;
struct TYPE_4__ {int ccb_state; } ;
struct ccb_scsiio {int resid; TYPE_1__ ccb_h; } ;
union ccb {TYPE_3__ ccb_h; struct ccb_scsiio csio; } ;
struct pt_softc {int device_stats; int bio_queue; int flags; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
struct bio {int bio_error; int bio_flags; int bio_resid; int bio_bcount; } ;
struct TYPE_5__ {int le; } ;


 int BIO_ERROR ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_QFRZN ;
 int CAM_REQ_CMP ;
 int CAM_RETRY_SELTO ;
 int CAM_STATUS_MASK ;
 int EIO ;
 int ENXIO ;
 int ERESTART ;
 int LIST_REMOVE (TYPE_3__*,int ) ;


 int PT_CCB_RETRY_UA ;
 int PT_FLAG_DEVICE_INVALID ;
 int SF_RETRY_UA ;
 int biofinish (struct bio*,int ,int ) ;
 int bioq_flush (int *,int *,int ) ;
 int cam_release_devq (int ,int ,int ,int ,int ) ;
 TYPE_2__ periph_links ;
 int pterror (union ccb*,int ,int) ;
 int xpt_print (int ,char*) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static void
ptdone(struct cam_periph *periph, union ccb *done_ccb)
{
 struct pt_softc *softc;
 struct ccb_scsiio *csio;

 softc = (struct pt_softc *)periph->softc;

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("ptdone\n"));

 csio = &done_ccb->csio;
 switch (csio->ccb_h.ccb_state) {
 case 129:
 case 128:
 {
  struct bio *bp;

  bp = (struct bio *)done_ccb->ccb_h.ccb_bp;
  if ((done_ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
   int error;
   int sf;

   if ((csio->ccb_h.ccb_state & PT_CCB_RETRY_UA) != 0)
    sf = SF_RETRY_UA;
   else
    sf = 0;

   error = pterror(done_ccb, CAM_RETRY_SELTO, sf);
   if (error == ERESTART) {




    return;
   }
   if (error != 0) {
    if (error == ENXIO) {




     xpt_print(periph->path,
         "Invalidating device\n");
     softc->flags |= PT_FLAG_DEVICE_INVALID;
    }






    bioq_flush(&softc->bio_queue, ((void*)0), EIO);
    bp->bio_error = error;
    bp->bio_resid = bp->bio_bcount;
    bp->bio_flags |= BIO_ERROR;
   } else {
    bp->bio_resid = csio->resid;
    bp->bio_error = 0;
    if (bp->bio_resid != 0) {

     bp->bio_flags |= BIO_ERROR;
    }
   }
   if ((done_ccb->ccb_h.status & CAM_DEV_QFRZN) != 0)
    cam_release_devq(done_ccb->ccb_h.path,
                       0,
                    0,
                  0,
                        0);
  } else {
   bp->bio_resid = csio->resid;
   if (bp->bio_resid != 0)
    bp->bio_flags |= BIO_ERROR;
  }





  LIST_REMOVE(&done_ccb->ccb_h, periph_links.le);

  biofinish(bp, softc->device_stats, 0);
  break;
 }
 }
 xpt_release_ccb(done_ccb);
}
