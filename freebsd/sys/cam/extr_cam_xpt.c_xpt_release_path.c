
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_path {int * bus; int * target; int * device; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int xpt_release_bus (int *) ;
 int xpt_release_device (int *) ;
 int xpt_release_target (int *) ;

void
xpt_release_path(struct cam_path *path)
{
 CAM_DEBUG(path, CAM_DEBUG_TRACE, ("xpt_release_path\n"));
 if (path->device != ((void*)0)) {
  xpt_release_device(path->device);
  path->device = ((void*)0);
 }
 if (path->target != ((void*)0)) {
  xpt_release_target(path->target);
  path->target = ((void*)0);
 }
 if (path->bus != ((void*)0)) {
  xpt_release_bus(path->bus);
  path->bus = ((void*)0);
 }
}
