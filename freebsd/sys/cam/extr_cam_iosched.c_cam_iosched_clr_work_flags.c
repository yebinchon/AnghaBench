
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cam_iosched_softc {int flags; } ;



void
cam_iosched_clr_work_flags(struct cam_iosched_softc *isc, uint32_t flags)
{
 isc->flags &= ~flags;
}
