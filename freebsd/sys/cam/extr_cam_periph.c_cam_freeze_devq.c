
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
struct ccb_hdr {int flags; int func_code; } ;
struct cam_path {int dummy; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_QFREEZE ;
 int XPT_NOOP ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (struct ccb_hdr*,struct cam_path*,int) ;

void
cam_freeze_devq(struct cam_path *path)
{
 struct ccb_hdr ccb_h;

 CAM_DEBUG(path, CAM_DEBUG_TRACE, ("cam_freeze_devq\n"));
 xpt_setup_ccb(&ccb_h, path, 1);
 ccb_h.func_code = XPT_NOOP;
 ccb_h.flags = CAM_DEV_QFREEZE;
 xpt_action((union ccb *)&ccb_h);
}
