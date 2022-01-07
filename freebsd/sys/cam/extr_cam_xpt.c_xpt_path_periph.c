
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int dummy; } ;
struct cam_path {struct cam_periph* periph; } ;



struct cam_periph*
xpt_path_periph(struct cam_path *path)
{

 return (path->periph);
}
