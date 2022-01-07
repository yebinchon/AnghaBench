
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_path {int bus; } ;
typedef int path_id_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ cam_status ;


 int AC_LOST_DEVICE ;
 int AC_PATH_DEREGISTERED ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_compile_path (struct cam_path*,int *,int ,int ,int ) ;
 int xpt_release_bus (int ) ;
 int xpt_release_path (struct cam_path*) ;

int32_t
xpt_bus_deregister(path_id_t pathid)
{
 struct cam_path bus_path;
 cam_status status;

 status = xpt_compile_path(&bus_path, ((void*)0), pathid,
      CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
 if (status != CAM_REQ_CMP)
  return (status);

 xpt_async(AC_LOST_DEVICE, &bus_path, ((void*)0));
 xpt_async(AC_PATH_DEREGISTERED, &bus_path, ((void*)0));


 xpt_release_bus(bus_path.bus);
 xpt_release_path(&bus_path);

 return (CAM_REQ_CMP);
}
