
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_iosched_softc {int sort_io_queue; } ;



void
cam_iosched_set_sort_queue(struct cam_iosched_softc *isc, int val)
{

 isc->sort_io_queue = val;
}
