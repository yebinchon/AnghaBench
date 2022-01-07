
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int flags; } ;


 int CAM_PERIPH_INVALID ;
 int CAM_PERIPH_LOCKED ;
 int CAM_PERIPH_LOCK_WANTED ;
 int ENXIO ;
 int MA_OWNED ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int cam_periph_sleep (struct cam_periph*,struct cam_periph*,int,char*,int ) ;

int
cam_periph_hold(struct cam_periph *periph, int priority)
{
 int error;
 if (cam_periph_acquire(periph) != 0)
  return (ENXIO);

 cam_periph_assert(periph, MA_OWNED);
 while ((periph->flags & CAM_PERIPH_LOCKED) != 0) {
  periph->flags |= CAM_PERIPH_LOCK_WANTED;
  if ((error = cam_periph_sleep(periph, periph, priority,
      "caplck", 0)) != 0) {
   cam_periph_release_locked(periph);
   return (error);
  }
  if (periph->flags & CAM_PERIPH_INVALID) {
   cam_periph_release_locked(periph);
   return (ENXIO);
  }
 }

 periph->flags |= CAM_PERIPH_LOCKED;
 return (0);
}
