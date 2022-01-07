
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {scalar_t__ d_drv1; } ;
struct cd_softc {int flags; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int CAM_DEBUG (int ,int,char*) ;
 int CAM_DEBUG_PERIPH ;
 int CAM_DEBUG_TRACE ;
 int CD_FLAG_INVALID ;
 int ENXIO ;
 int PCATCH ;
 int PRIBIO ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_hold (struct cam_periph*,int) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int cam_periph_unhold (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int cdcheckmedia (struct cam_periph*,int) ;

__attribute__((used)) static int
cdopen(struct disk *dp)
{
 struct cam_periph *periph;
 struct cd_softc *softc;
 int error;

 periph = (struct cam_periph *)dp->d_drv1;
 softc = (struct cd_softc *)periph->softc;

 if (cam_periph_acquire(periph) != 0)
  return(ENXIO);

 cam_periph_lock(periph);

 if (softc->flags & CD_FLAG_INVALID) {
  cam_periph_release_locked(periph);
  cam_periph_unlock(periph);
  return(ENXIO);
 }

 if ((error = cam_periph_hold(periph, PRIBIO | PCATCH)) != 0) {
  cam_periph_release_locked(periph);
  cam_periph_unlock(periph);
  return (error);
 }

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE | CAM_DEBUG_PERIPH,
     ("cdopen\n"));






 cdcheckmedia(periph, 1);

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("leaving cdopen\n"));
 cam_periph_unhold(periph);

 cam_periph_unlock(periph);

 return (0);
}
