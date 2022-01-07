
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target_id_t ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;
typedef int path_id_t ;
typedef int lun_id_t ;
typedef int cam_status ;


 int xpt_create_path (struct cam_path**,struct cam_periph*,int ,int ,int ) ;

cam_status
xpt_create_path_unlocked(struct cam_path **new_path_ptr,
    struct cam_periph *periph, path_id_t path_id,
    target_id_t target_id, lun_id_t lun_id)
{

 return (xpt_create_path(new_path_ptr, periph, path_id, target_id,
     lun_id));
}
