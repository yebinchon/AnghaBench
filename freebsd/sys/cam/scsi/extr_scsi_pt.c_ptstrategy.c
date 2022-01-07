
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_softc {int flags; int bio_queue; } ;
struct cam_periph {scalar_t__ softc; } ;
struct bio {int bio_bcount; int bio_resid; TYPE_1__* bio_dev; } ;
struct TYPE_2__ {scalar_t__ si_drv1; } ;


 int CAM_PRIORITY_NORMAL ;
 int ENXIO ;
 int PT_FLAG_DEVICE_INVALID ;
 int biofinish (struct bio*,int *,int ) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
ptstrategy(struct bio *bp)
{
 struct cam_periph *periph;
 struct pt_softc *softc;

 periph = (struct cam_periph *)bp->bio_dev->si_drv1;
 bp->bio_resid = bp->bio_bcount;
 if (periph == ((void*)0)) {
  biofinish(bp, ((void*)0), ENXIO);
  return;
 }
 cam_periph_lock(periph);
 softc = (struct pt_softc *)periph->softc;




 if ((softc->flags & PT_FLAG_DEVICE_INVALID)) {
  cam_periph_unlock(periph);
  biofinish(bp, ((void*)0), ENXIO);
  return;
 }




 bioq_insert_tail(&softc->bio_queue, bp);




 xpt_schedule(periph, CAM_PRIORITY_NORMAL);
 cam_periph_unlock(periph);

 return;
}
