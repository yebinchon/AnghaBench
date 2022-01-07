
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int target_id_t ;
struct cam_periph {int dummy; } ;
struct cam_path {struct cam_ed* device; struct cam_et* target; struct cam_eb* bus; struct cam_periph* periph; } ;
struct cam_et {int dummy; } ;
struct cam_ed {int dummy; } ;
struct cam_eb {int eb_mtx; TYPE_2__* xport; } ;
typedef int path_id_t ;
typedef int lun_id_t ;
typedef scalar_t__ cam_status ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct cam_ed* (* alloc_device ) (struct cam_eb*,struct cam_et*,int ) ;} ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 scalar_t__ CAM_PATH_INVALID ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_RESRC_UNAVAIL ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct cam_ed* stub1 (struct cam_eb*,struct cam_et*,int ) ;
 struct cam_et* xpt_alloc_target (struct cam_eb*,int ) ;
 struct cam_eb* xpt_find_bus (int ) ;
 struct cam_ed* xpt_find_device (struct cam_et*,int ) ;
 struct cam_et* xpt_find_target (struct cam_eb*,int ) ;
 int xpt_lock_buses () ;
 int xpt_release_bus (struct cam_eb*) ;
 int xpt_release_device (struct cam_ed*) ;
 int xpt_release_target (struct cam_et*) ;
 int xpt_unlock_buses () ;

cam_status
xpt_compile_path(struct cam_path *new_path, struct cam_periph *perph,
   path_id_t path_id, target_id_t target_id, lun_id_t lun_id)
{
 struct cam_eb *bus;
 struct cam_et *target;
 struct cam_ed *device;
 cam_status status;

 status = CAM_REQ_CMP;
 target = ((void*)0);
 device = ((void*)0);





 bus = xpt_find_bus(path_id);
 if (bus == ((void*)0)) {
  status = CAM_PATH_INVALID;
 } else {
  xpt_lock_buses();
  mtx_lock(&bus->eb_mtx);
  target = xpt_find_target(bus, target_id);
  if (target == ((void*)0)) {

   struct cam_et *new_target;

   new_target = xpt_alloc_target(bus, target_id);
   if (new_target == ((void*)0)) {
    status = CAM_RESRC_UNAVAIL;
   } else {
    target = new_target;
   }
  }
  xpt_unlock_buses();
  if (target != ((void*)0)) {
   device = xpt_find_device(target, lun_id);
   if (device == ((void*)0)) {

    struct cam_ed *new_device;

    new_device =
        (*(bus->xport->ops->alloc_device))(bus,
               target,
               lun_id);
    if (new_device == ((void*)0)) {
     status = CAM_RESRC_UNAVAIL;
    } else {
     device = new_device;
    }
   }
  }
  mtx_unlock(&bus->eb_mtx);
 }




 if (status == CAM_REQ_CMP) {
  new_path->periph = perph;
  new_path->bus = bus;
  new_path->target = target;
  new_path->device = device;
  CAM_DEBUG(new_path, CAM_DEBUG_TRACE, ("xpt_compile_path\n"));
 } else {
  if (device != ((void*)0))
   xpt_release_device(device);
  if (target != ((void*)0))
   xpt_release_target(target);
  if (bus != ((void*)0))
   xpt_release_bus(bus);
 }
 return (status);
}
