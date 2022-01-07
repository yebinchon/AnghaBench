
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ccb_setasync {int callback_arg; int (* callback ) (int ,int ,struct cam_path*,struct ccb_getdev*) ;} ;
struct TYPE_6__ {int func_code; } ;
struct ccb_getdev {TYPE_3__ ccb_h; } ;
struct cam_path {int dummy; } ;
struct cam_ed {int flags; int lun_id; TYPE_2__* target; } ;
struct TYPE_5__ {int target_id; TYPE_1__* bus; } ;
struct TYPE_4__ {int path_id; } ;


 int AC_FOUND_DEVICE ;
 int CAM_DEV_UNCONFIGURED ;
 int CAM_PRIORITY_NORMAL ;
 int XPT_GDEV_TYPE ;
 int stub1 (int ,int ,struct cam_path*,struct ccb_getdev*) ;
 int xpt_action (union ccb*) ;
 int xpt_compile_path (struct cam_path*,int *,int ,int ,int ) ;
 int xpt_release_path (struct cam_path*) ;
 int xpt_setup_ccb (TYPE_3__*,struct cam_path*,int ) ;

__attribute__((used)) static int
xptsetasyncfunc(struct cam_ed *device, void *arg)
{
 struct cam_path path;
 struct ccb_getdev cgd;
 struct ccb_setasync *csa = (struct ccb_setasync *)arg;







 if ((device->flags & CAM_DEV_UNCONFIGURED) != 0)
  return (1);

 xpt_compile_path(&path,
    ((void*)0),
    device->target->bus->path_id,
    device->target->target_id,
    device->lun_id);
 xpt_setup_ccb(&cgd.ccb_h, &path, CAM_PRIORITY_NORMAL);
 cgd.ccb_h.func_code = XPT_GDEV_TYPE;
 xpt_action((union ccb *)&cgd);
 csa->callback(csa->callback_arg,
       AC_FOUND_DEVICE,
       &path, &cgd);
 xpt_release_path(&path);

 return(1);
}
