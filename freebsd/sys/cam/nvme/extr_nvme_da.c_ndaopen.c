
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nda_softc {int flags; } ;
struct disk {scalar_t__ d_drv1; } ;
struct cam_periph {scalar_t__ softc; int path; } ;


 int CAM_DEBUG (int ,int,char*) ;
 int CAM_DEBUG_PERIPH ;
 int CAM_DEBUG_TRACE ;
 int ENXIO ;
 int NDA_FLAG_OPEN ;
 int PCATCH ;
 int PRIBIO ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_hold (struct cam_periph*,int) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_release (struct cam_periph*) ;
 int cam_periph_unhold (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;

__attribute__((used)) static int
ndaopen(struct disk *dp)
{
 struct cam_periph *periph;
 struct nda_softc *softc;
 int error;

 periph = (struct cam_periph *)dp->d_drv1;
 if (cam_periph_acquire(periph) != 0) {
  return(ENXIO);
 }

 cam_periph_lock(periph);
 if ((error = cam_periph_hold(periph, PRIBIO|PCATCH)) != 0) {
  cam_periph_unlock(periph);
  cam_periph_release(periph);
  return (error);
 }

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE | CAM_DEBUG_PERIPH,
     ("ndaopen\n"));

 softc = (struct nda_softc *)periph->softc;
 softc->flags |= NDA_FLAG_OPEN;

 cam_periph_unhold(periph);
 cam_periph_unlock(periph);
 return (0);
}
