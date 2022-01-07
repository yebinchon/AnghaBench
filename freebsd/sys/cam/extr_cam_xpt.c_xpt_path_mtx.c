
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtx {int dummy; } ;
struct cam_path {TYPE_1__* device; } ;
struct TYPE_2__ {struct mtx device_mtx; } ;



struct mtx *
xpt_path_mtx(struct cam_path *path)
{

 return (&path->device->device_mtx);
}
