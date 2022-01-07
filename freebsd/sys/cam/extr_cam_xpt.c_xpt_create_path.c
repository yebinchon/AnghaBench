
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target_id_t ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;
typedef int path_id_t ;
typedef int lun_id_t ;
typedef scalar_t__ cam_status ;


 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_RESRC_UNAVAIL ;
 int M_CAMPATH ;
 int M_NOWAIT ;
 int free (struct cam_path*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 scalar_t__ xpt_compile_path (struct cam_path*,struct cam_periph*,int ,int ,int ) ;

cam_status
xpt_create_path(struct cam_path **new_path_ptr, struct cam_periph *perph,
  path_id_t path_id, target_id_t target_id, lun_id_t lun_id)
{
 struct cam_path *path;
 cam_status status;

 path = (struct cam_path *)malloc(sizeof(*path), M_CAMPATH, M_NOWAIT);

 if (path == ((void*)0)) {
  status = CAM_RESRC_UNAVAIL;
  return(status);
 }
 status = xpt_compile_path(path, perph, path_id, target_id, lun_id);
 if (status != CAM_REQ_CMP) {
  free(path, M_CAMPATH);
  path = ((void*)0);
 }
 *new_path_ptr = path;
 return (status);
}
