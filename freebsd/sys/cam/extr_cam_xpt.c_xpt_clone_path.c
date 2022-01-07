
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_path {int dummy; } ;
typedef int cam_status ;


 int CAM_REQ_CMP ;
 int CAM_RESRC_UNAVAIL ;
 int M_CAMPATH ;
 int M_NOWAIT ;
 scalar_t__ malloc (int,int ,int ) ;
 int xpt_copy_path (struct cam_path*,struct cam_path*) ;

cam_status
xpt_clone_path(struct cam_path **new_path_ptr, struct cam_path *path)
{
 struct cam_path *new_path;

 new_path = (struct cam_path *)malloc(sizeof(*path), M_CAMPATH, M_NOWAIT);
 if (new_path == ((void*)0))
  return(CAM_RESRC_UNAVAIL);
 xpt_copy_path(new_path, path);
 *new_path_ptr = new_path;
 return (CAM_REQ_CMP);
}
