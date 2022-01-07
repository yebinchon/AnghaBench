
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_path {int * device; int * target; int * bus; } ;


 int xpt_acquire_bus (int *) ;
 int xpt_acquire_device (int *) ;
 int xpt_acquire_target (int *) ;

void
xpt_copy_path(struct cam_path *new_path, struct cam_path *path)
{

 *new_path = *path;
 if (path->bus != ((void*)0))
  xpt_acquire_bus(path->bus);
 if (path->target != ((void*)0))
  xpt_acquire_target(path->target);
 if (path->device != ((void*)0))
  xpt_acquire_device(path->device);
}
