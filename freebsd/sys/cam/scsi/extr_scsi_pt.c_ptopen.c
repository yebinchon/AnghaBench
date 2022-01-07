
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pt_softc {int flags; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int EBUSY ;
 int ENXIO ;
 int PT_FLAG_DEVICE_INVALID ;
 int PT_FLAG_OPEN ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_release (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int devtoname (struct cdev*) ;

__attribute__((used)) static int
ptopen(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct cam_periph *periph;
 struct pt_softc *softc;
 int error = 0;

 periph = (struct cam_periph *)dev->si_drv1;
 if (cam_periph_acquire(periph) != 0)
  return (ENXIO);

 softc = (struct pt_softc *)periph->softc;

 cam_periph_lock(periph);
 if (softc->flags & PT_FLAG_DEVICE_INVALID) {
  cam_periph_release_locked(periph);
  cam_periph_unlock(periph);
  return(ENXIO);
 }

 if ((softc->flags & PT_FLAG_OPEN) == 0)
  softc->flags |= PT_FLAG_OPEN;
 else {
  error = EBUSY;
  cam_periph_release(periph);
 }

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE,
     ("ptopen: dev=%s\n", devtoname(dev)));

 cam_periph_unlock(periph);
 return (error);
}
