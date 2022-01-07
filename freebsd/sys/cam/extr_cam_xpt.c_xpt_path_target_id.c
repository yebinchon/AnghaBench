
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int target_id_t ;
struct cam_path {TYPE_1__* target; } ;
struct TYPE_2__ {int target_id; } ;


 int CAM_TARGET_WILDCARD ;

target_id_t
xpt_path_target_id(struct cam_path *path)
{
 if (path->target != ((void*)0))
  return (path->target->target_id);
 else
  return (CAM_TARGET_WILDCARD);
}
