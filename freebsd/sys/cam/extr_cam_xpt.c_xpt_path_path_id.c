
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_path {TYPE_1__* bus; } ;
typedef int path_id_t ;
struct TYPE_2__ {int path_id; } ;



path_id_t
xpt_path_path_id(struct cam_path *path)
{
 return(path->bus->path_id);
}
