
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ccb_trans_settings {int dummy; } ;
struct cam_path {int periph; } ;
struct cam_et {int target_id; } ;
struct cam_ed {int flags; int lun_id; } ;
struct cam_eb {int path_id; } ;
typedef scalar_t__ cam_status ;


 scalar_t__ AC_BUS_RESET ;
 scalar_t__ AC_INQ_CHANGED ;
 scalar_t__ AC_LOST_DEVICE ;
 scalar_t__ AC_SENT_BDR ;
 scalar_t__ AC_TRANSFER_NEG ;
 int CAM_DEV_UNCONFIGURED ;
 int CAM_EXPECT_INQ_CHANGE ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_REQ_CMP_ERR ;
 int CAM_TARGET_WILDCARD ;
 int RELSIM_RELEASE_AFTER_TIMEOUT ;
 int TRUE ;
 int cam_freeze_devq (struct cam_path*) ;
 int cam_release_devq (struct cam_path*,int ,int ,int ,int ) ;
 int scsi_delay ;
 int scsi_scan_lun (int ,struct cam_path*,int ,int *) ;
 int scsi_set_transfer_settings (struct ccb_trans_settings*,struct cam_path*,int ) ;
 int scsi_toggle_tags (struct cam_path*) ;
 scalar_t__ xpt_compile_path (struct cam_path*,int *,int ,int ,int ) ;
 int xpt_release_device (struct cam_ed*) ;
 int xpt_release_path (struct cam_path*) ;

__attribute__((used)) static void
scsi_dev_async(u_int32_t async_code, struct cam_eb *bus, struct cam_et *target,
       struct cam_ed *device, void *async_arg)
{
 cam_status status;
 struct cam_path newpath;




 if (target->target_id == CAM_TARGET_WILDCARD
  || device->lun_id == CAM_LUN_WILDCARD)
  return;





 if ((async_code == AC_SENT_BDR)
  || (async_code == AC_BUS_RESET)
  || (async_code == AC_INQ_CHANGED))
  status = xpt_compile_path(&newpath, ((void*)0),
       bus->path_id,
       target->target_id,
       device->lun_id);
 else
  status = CAM_REQ_CMP_ERR;

 if (status == CAM_REQ_CMP) {





  if (async_code == AC_SENT_BDR
   || async_code == AC_BUS_RESET) {
   cam_freeze_devq(&newpath);
   cam_release_devq(&newpath,
    RELSIM_RELEASE_AFTER_TIMEOUT,
                 0,
               scsi_delay,
                     0);
   scsi_toggle_tags(&newpath);
  }

  if (async_code == AC_INQ_CHANGED) {







   scsi_scan_lun(newpath.periph, &newpath,
         CAM_EXPECT_INQ_CHANGE, ((void*)0));
  }
  xpt_release_path(&newpath);
 } else if (async_code == AC_LOST_DEVICE &&
     (device->flags & CAM_DEV_UNCONFIGURED) == 0) {
  device->flags |= CAM_DEV_UNCONFIGURED;
  xpt_release_device(device);
 } else if (async_code == AC_TRANSFER_NEG) {
  struct ccb_trans_settings *settings;
  struct cam_path path;

  settings = (struct ccb_trans_settings *)async_arg;
  xpt_compile_path(&path, ((void*)0), bus->path_id, target->target_id,
     device->lun_id);
  scsi_set_transfer_settings(settings, &path,
                       TRUE);
  xpt_release_path(&path);
 }
}
