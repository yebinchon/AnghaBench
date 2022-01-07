
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ccb {int nvmeio; } ;
struct nda_softc {int flags; scalar_t__ refcount; scalar_t__ outstanding_cmds; TYPE_1__* disk; } ;
struct disk {scalar_t__ d_drv1; } ;
struct cam_periph {int flags; int path; scalar_t__ softc; } ;
struct TYPE_2__ {int d_devstat; } ;


 int CAM_DEBUG (int ,int,char*) ;
 int CAM_DEBUG_PERIPH ;
 int CAM_DEBUG_TRACE ;
 int CAM_PERIPH_INVALID ;
 int CAM_PRIORITY_NORMAL ;
 int KASSERT (int,char*) ;
 int NDA_FLAG_DIRTY ;
 int NDA_FLAG_OPEN ;
 int PRIBIO ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 scalar_t__ cam_periph_hold (struct cam_periph*,int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_release (struct cam_periph*) ;
 int cam_periph_runccb (union ccb*,int ,int ,int ,int ) ;
 int cam_periph_sleep (struct cam_periph*,scalar_t__*,int ,char*,int) ;
 int cam_periph_unhold (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int nda_nvme_flush (struct nda_softc*,int *) ;
 int ndaerror ;
 int xpt_print (int ,char*) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
ndaclose(struct disk *dp)
{
 struct cam_periph *periph;
 struct nda_softc *softc;
 union ccb *ccb;
 int error;

 periph = (struct cam_periph *)dp->d_drv1;
 softc = (struct nda_softc *)periph->softc;
 cam_periph_lock(periph);

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE | CAM_DEBUG_PERIPH,
     ("ndaclose\n"));

 if ((softc->flags & NDA_FLAG_DIRTY) != 0 &&
     (periph->flags & CAM_PERIPH_INVALID) == 0 &&
     cam_periph_hold(periph, PRIBIO) == 0) {

  ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);
  nda_nvme_flush(softc, &ccb->nvmeio);
  error = cam_periph_runccb(ccb, ndaerror, 0,
                     0, softc->disk->d_devstat);

  if (error != 0)
   xpt_print(periph->path, "Synchronize cache failed\n");
  else
   softc->flags &= ~NDA_FLAG_DIRTY;
  xpt_release_ccb(ccb);
  cam_periph_unhold(periph);
 }

 softc->flags &= ~NDA_FLAG_OPEN;

 while (softc->refcount != 0)
  cam_periph_sleep(periph, &softc->refcount, PRIBIO, "ndaclose", 1);
 KASSERT(softc->outstanding_cmds == 0,
     ("nda %d outstanding commands", softc->outstanding_cmds));
 cam_periph_unlock(periph);
 cam_periph_release(periph);
 return (0);
}
