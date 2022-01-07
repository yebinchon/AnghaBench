
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ccb_hdr {int dummy; } ;
struct cam_path {int dummy; } ;


 int xpt_setup_ccb_flags (struct ccb_hdr*,struct cam_path*,int ,int ) ;

void
xpt_setup_ccb(struct ccb_hdr *ccb_h, struct cam_path *path, u_int32_t priority)
{
 xpt_setup_ccb_flags(ccb_h, path, priority, 0);
}
