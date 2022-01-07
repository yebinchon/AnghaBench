
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_iosched_softc {int trim_goal; } ;



void
cam_iosched_set_trim_goal(struct cam_iosched_softc *isc, int goal)
{

 isc->trim_goal = goal;
}
