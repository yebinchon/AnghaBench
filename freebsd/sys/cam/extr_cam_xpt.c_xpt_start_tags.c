
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_4__ {int func_code; } ;
struct ccb_relsim {scalar_t__ qfrozen_cnt; scalar_t__ release_timeout; scalar_t__ openings; int release_flags; TYPE_2__ ccb_h; } ;
struct cam_sim {int max_tagged_dev_openings; } ;
struct cam_path {TYPE_1__* bus; struct cam_ed* device; } ;
struct cam_ed {int tag_saved_openings; int maxtags; int inq_flags; int flags; } ;
struct TYPE_3__ {struct cam_sim* sim; } ;


 int AC_GETDEV_CHANGED ;
 int CAM_DEV_TAG_AFTER_COUNT ;
 int CAM_PRIORITY_NORMAL ;
 int RELSIM_RELEASE_AFTER_QEMPTY ;
 int SID_CmdQue ;
 int XPT_REL_SIMQ ;
 int min (int ,int ) ;
 int xpt_action (union ccb*) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 int xpt_dev_ccbq_resize (struct cam_path*,int) ;
 int xpt_freeze_devq (struct cam_path*,int) ;
 int xpt_setup_ccb (TYPE_2__*,struct cam_path*,int ) ;

void
xpt_start_tags(struct cam_path *path)
{
 struct ccb_relsim crs;
 struct cam_ed *device;
 struct cam_sim *sim;
 int newopenings;

 device = path->device;
 sim = path->bus->sim;
 device->flags &= ~CAM_DEV_TAG_AFTER_COUNT;
 xpt_freeze_devq(path, 1);
 device->inq_flags |= SID_CmdQue;
 if (device->tag_saved_openings != 0)
  newopenings = device->tag_saved_openings;
 else
  newopenings = min(device->maxtags,
      sim->max_tagged_dev_openings);
 xpt_dev_ccbq_resize(path, newopenings);
 xpt_async(AC_GETDEV_CHANGED, path, ((void*)0));
 xpt_setup_ccb(&crs.ccb_h, path, CAM_PRIORITY_NORMAL);
 crs.ccb_h.func_code = XPT_REL_SIMQ;
 crs.release_flags = RELSIM_RELEASE_AFTER_QEMPTY;
 crs.openings
     = crs.release_timeout
     = crs.qfrozen_cnt
     = 0;
 xpt_action((union ccb *)&crs);
}
