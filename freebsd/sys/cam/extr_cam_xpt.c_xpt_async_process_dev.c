
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int async_code; void* async_arg_ptr; } ;
struct TYPE_9__ {struct cam_path* path; } ;
union ccb {TYPE_2__ casync; TYPE_1__ ccb_h; } ;
typedef int u_int32_t ;
struct cam_path {TYPE_4__* target; struct cam_ed* device; } ;
struct cam_ed {scalar_t__ lun_id; int device_mtx; int asyncs; TYPE_8__* target; } ;
struct TYPE_16__ {scalar_t__ target_id; TYPE_7__* bus; } ;
struct TYPE_15__ {scalar_t__ path_id; TYPE_6__* xport; } ;
struct TYPE_14__ {TYPE_5__* ops; } ;
struct TYPE_13__ {int (* async ) (int ,TYPE_7__*,TYPE_8__*,struct cam_ed*,void*) ;} ;
struct TYPE_12__ {scalar_t__ target_id; TYPE_3__* bus; } ;
struct TYPE_11__ {scalar_t__ path_id; } ;


 scalar_t__ CAM_BUS_WILDCARD ;
 scalar_t__ CAM_LUN_WILDCARD ;
 scalar_t__ CAM_TARGET_WILDCARD ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,TYPE_7__*,TYPE_8__*,struct cam_ed*,void*) ;
 int xpt_acquire_device (struct cam_ed*) ;
 int xpt_async_bcast (int *,int ,struct cam_path*,void*) ;
 int xpt_path_lock (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 int xpt_release_device (struct cam_ed*) ;

__attribute__((used)) static int
xpt_async_process_dev(struct cam_ed *device, void *arg)
{
 union ccb *ccb = arg;
 struct cam_path *path = ccb->ccb_h.path;
 void *async_arg = ccb->casync.async_arg_ptr;
 u_int32_t async_code = ccb->casync.async_code;
 int relock;

 if (path->device != device
  && path->device->lun_id != CAM_LUN_WILDCARD
  && device->lun_id != CAM_LUN_WILDCARD)
  return (1);






 xpt_acquire_device(device);






 if ((device->lun_id == CAM_LUN_WILDCARD &&
      path->device->lun_id != CAM_LUN_WILDCARD) ||
     (device->target->target_id == CAM_TARGET_WILDCARD &&
      path->target->target_id != CAM_TARGET_WILDCARD) ||
     (device->target->bus->path_id == CAM_BUS_WILDCARD &&
      path->target->bus->path_id != CAM_BUS_WILDCARD)) {
  mtx_unlock(&device->device_mtx);
  xpt_path_lock(path);
  relock = 1;
 } else
  relock = 0;

 (*(device->target->bus->xport->ops->async))(async_code,
     device->target->bus, device->target, device, async_arg);
 xpt_async_bcast(&device->asyncs, async_code, path, async_arg);

 if (relock) {
  xpt_path_unlock(path);
  mtx_lock(&device->device_mtx);
 }
 xpt_release_device(device);
 return (1);
}
