
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_iosched_softc {int flags; } ;


 int CAM_IOSCHED_FLAG_TRIM_ACTIVE ;

void
cam_iosched_trim_done(struct cam_iosched_softc *isc)
{

 isc->flags &= ~CAM_IOSCHED_FLAG_TRIM_ACTIVE;
}
