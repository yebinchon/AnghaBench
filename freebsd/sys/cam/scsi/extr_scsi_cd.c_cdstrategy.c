
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cd_softc {int flags; int bio_queue; } ;
struct cam_periph {scalar_t__ softc; int path; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_PRIORITY_NORMAL ;
 int CD_FLAG_INVALID ;
 int CD_FLAG_VALID_MEDIA ;
 int ENXIO ;
 int biofinish (struct bio*,int *,int ) ;
 int bioq_disksort (int *,struct bio*) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int cdcheckmedia (struct cam_periph*,int ) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
cdstrategy(struct bio *bp)
{
 struct cam_periph *periph;
 struct cd_softc *softc;

 periph = (struct cam_periph *)bp->bio_disk->d_drv1;
 cam_periph_lock(periph);
 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE,
     ("cdstrategy(%p)\n", bp));

 softc = (struct cd_softc *)periph->softc;




 if ((softc->flags & CD_FLAG_INVALID)) {
  cam_periph_unlock(periph);
  biofinish(bp, ((void*)0), ENXIO);
  return;
 }




 bioq_disksort(&softc->bio_queue, bp);





 if ((softc->flags & CD_FLAG_VALID_MEDIA) == 0)
  cdcheckmedia(periph, 0);
 else
  xpt_schedule(periph, CAM_PRIORITY_NORMAL);

 cam_periph_unlock(periph);
 return;
}
