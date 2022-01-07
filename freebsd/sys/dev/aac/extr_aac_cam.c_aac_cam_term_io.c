
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int32_t ;
struct cam_sim {int dummy; } ;


 int CAM_UA_TERMIO ;

__attribute__((used)) static u_int32_t
aac_cam_term_io(struct cam_sim *sim, union ccb *ccb)
{
 return (CAM_UA_TERMIO);
}
