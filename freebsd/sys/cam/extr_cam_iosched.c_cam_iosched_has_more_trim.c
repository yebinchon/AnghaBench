
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_iosched_softc {scalar_t__ trim_goal; scalar_t__ queued_trims; scalar_t__ trim_ticks; scalar_t__ last_trim_tick; int flags; int trim_queue; } ;


 int CAM_IOSCHED_FLAG_TRIM_ACTIVE ;
 scalar_t__ bioq_first (int *) ;
 scalar_t__ ticks ;

__attribute__((used)) static inline bool
cam_iosched_has_more_trim(struct cam_iosched_softc *isc)
{






 if (isc->trim_goal > 0) {
  if (isc->queued_trims >= isc->trim_goal)
   return 1;
  if (isc->queued_trims > 0 &&
      isc->trim_ticks > 0 &&
      ticks - isc->last_trim_tick > isc->trim_ticks)
   return 1;
  return 0;
 }

 return !(isc->flags & CAM_IOSCHED_FLAG_TRIM_ACTIVE) &&
     bioq_first(&isc->trim_queue);
}
