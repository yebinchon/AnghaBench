
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_iosched_softc {int flags; int ticker; int sysctl_ctx; scalar_t__ sysctl_tree; int cl; int trim_stats; int write_stats; int read_stats; } ;


 int CAM_IOSCHED_FLAG_CALLOUT_ACTIVE ;
 int ENXIO ;
 int M_CAMSCHED ;
 int callout_drain (int *) ;
 int cam_iosched_cl_sysctl_fini (int *) ;
 int cam_iosched_flush (struct cam_iosched_softc*,int *,int ) ;
 int cam_iosched_iop_stats_fini (int *) ;
 int free (struct cam_iosched_softc*,int ) ;
 int printf (char*) ;
 scalar_t__ sysctl_ctx_free (int *) ;

void
cam_iosched_fini(struct cam_iosched_softc *isc)
{
 if (isc) {
  cam_iosched_flush(isc, ((void*)0), ENXIO);
  free(isc, M_CAMSCHED);
 }
}
