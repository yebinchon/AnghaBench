
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef void* u_int32_t ;
struct TYPE_2__ {int flags; int func_code; } ;
struct ccb_relsim {void* qfrozen_cnt; void* release_timeout; void* openings; void* release_flags; TYPE_1__ ccb_h; } ;
struct cam_path {int dummy; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_QFREEZE ;
 int CAM_PRIORITY_NORMAL ;
 int XPT_REL_SIMQ ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_1__*,struct cam_path*,int ) ;

u_int32_t
cam_release_devq(struct cam_path *path, u_int32_t relsim_flags,
   u_int32_t openings, u_int32_t arg,
   int getcount_only)
{
 struct ccb_relsim crs;

 CAM_DEBUG(path, CAM_DEBUG_TRACE, ("cam_release_devq(%u, %u, %u, %d)\n",
     relsim_flags, openings, arg, getcount_only));
 xpt_setup_ccb(&crs.ccb_h, path, CAM_PRIORITY_NORMAL);
 crs.ccb_h.func_code = XPT_REL_SIMQ;
 crs.ccb_h.flags = getcount_only ? CAM_DEV_QFREEZE : 0;
 crs.release_flags = relsim_flags;
 crs.openings = openings;
 crs.release_timeout = arg;
 xpt_action((union ccb *)&crs);
 return (crs.qfrozen_cnt);
}
