
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int flags; } ;


 int CAM_PERIPH_LOCKED ;
 int CAM_PERIPH_LOCK_WANTED ;
 int MA_OWNED ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int wakeup (struct cam_periph*) ;

void
cam_periph_unhold(struct cam_periph *periph)
{

 cam_periph_assert(periph, MA_OWNED);

 periph->flags &= ~CAM_PERIPH_LOCKED;
 if ((periph->flags & CAM_PERIPH_LOCK_WANTED) != 0) {
  periph->flags &= ~CAM_PERIPH_LOCK_WANTED;
  wakeup(periph);
 }

 cam_periph_release_locked(periph);
}
