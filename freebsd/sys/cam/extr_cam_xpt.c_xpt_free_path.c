
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_path {int dummy; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int M_CAMPATH ;
 int free (struct cam_path*,int ) ;
 int xpt_release_path (struct cam_path*) ;

void
xpt_free_path(struct cam_path *path)
{

 CAM_DEBUG(path, CAM_DEBUG_TRACE, ("xpt_free_path\n"));
 xpt_release_path(path);
 free(path, M_CAMPATH);
}
