
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct enc_softc {int enc_flags; int open_count; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;


 int ENC_FLAG_INITIALIZED ;
 int ENC_FLAG_INVALID ;
 int ENXIO ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;

__attribute__((used)) static int
enc_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct cam_periph *periph;
 struct enc_softc *softc;
 int error = 0;

 periph = (struct cam_periph *)dev->si_drv1;
 if (cam_periph_acquire(periph) != 0)
  return (ENXIO);

 cam_periph_lock(periph);

 softc = (struct enc_softc *)periph->softc;

 if ((softc->enc_flags & ENC_FLAG_INITIALIZED) == 0) {
  error = ENXIO;
  goto out;
 }
 if (softc->enc_flags & ENC_FLAG_INVALID) {
  error = ENXIO;
  goto out;
 }
out:
 if (error != 0)
  cam_periph_release_locked(periph);
 else
  softc->open_count++;

 cam_periph_unlock(periph);

 return (error);
}
