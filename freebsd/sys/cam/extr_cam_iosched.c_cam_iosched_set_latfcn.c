
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_iosched_softc {void* latarg; int latfcn; } ;
typedef int cam_iosched_latfcn_t ;



void
cam_iosched_set_latfcn(struct cam_iosched_softc *isc,
    cam_iosched_latfcn_t fnp, void *argp)
{




}
