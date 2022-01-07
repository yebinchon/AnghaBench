
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_iosched_softc {int flags; } ;


 int CAM_IOSCHED_FLAG_WORK_FLAGS ;

__attribute__((used)) static inline bool
cam_iosched_has_flagged_work(struct cam_iosched_softc *isc)
{
 return !!(isc->flags & CAM_IOSCHED_FLAG_WORK_FLAGS);
}
