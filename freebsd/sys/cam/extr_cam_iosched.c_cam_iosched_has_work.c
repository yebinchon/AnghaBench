
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_iosched_softc {int dummy; } ;


 int cam_iosched_has_flagged_work (struct cam_iosched_softc*) ;
 int cam_iosched_has_io (struct cam_iosched_softc*) ;
 int cam_iosched_has_more_trim (struct cam_iosched_softc*) ;
 int iosched_debug ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static inline bool
cam_iosched_has_work(struct cam_iosched_softc *isc)
{







 return cam_iosched_has_io(isc) ||
  cam_iosched_has_more_trim(isc) ||
  cam_iosched_has_flagged_work(isc);
}
