
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_path {TYPE_1__* device; } ;
typedef int lun_id_t ;
struct TYPE_2__ {int lun_id; } ;


 int CAM_LUN_WILDCARD ;

lun_id_t
xpt_path_lun_id(struct cam_path *path)
{
 if (path->device != ((void*)0))
  return (path->device->lun_id);
 else
  return (CAM_LUN_WILDCARD);
}
