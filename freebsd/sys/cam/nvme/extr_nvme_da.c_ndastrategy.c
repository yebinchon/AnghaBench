
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nda_softc {int cam_iosched; int deletes; } ;
struct cam_periph {int flags; int path; scalar_t__ softc; } ;
struct bio {scalar_t__ bio_cmd; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 scalar_t__ BIO_DELETE ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_PERIPH_INVALID ;
 int ENXIO ;
 int biofinish (struct bio*,int *,int ) ;
 int cam_iosched_queue_work (int ,struct bio*) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int ndaschedule (struct cam_periph*) ;

__attribute__((used)) static void
ndastrategy(struct bio *bp)
{
 struct cam_periph *periph;
 struct nda_softc *softc;

 periph = (struct cam_periph *)bp->bio_disk->d_drv1;
 softc = (struct nda_softc *)periph->softc;

 cam_periph_lock(periph);

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("ndastrategy(%p)\n", bp));




 if ((periph->flags & CAM_PERIPH_INVALID) != 0) {
  cam_periph_unlock(periph);
  biofinish(bp, ((void*)0), ENXIO);
  return;
 }

 if (bp->bio_cmd == BIO_DELETE)
  softc->deletes++;




 cam_iosched_queue_work(softc->cam_iosched, bp);




 ndaschedule(periph);
 cam_periph_unlock(periph);

 return;
}
