
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int dummy; } ;
struct cam_iosched_softc {int dummy; } ;


 int CAM_PRIORITY_NORMAL ;
 scalar_t__ cam_iosched_has_work (struct cam_iosched_softc*) ;
 int xpt_schedule (struct cam_periph*,int ) ;

void
cam_iosched_schedule(struct cam_iosched_softc *isc, struct cam_periph *periph)
{

 if (cam_iosched_has_work(isc))
  xpt_schedule(periph, CAM_PRIORITY_NORMAL);
}
