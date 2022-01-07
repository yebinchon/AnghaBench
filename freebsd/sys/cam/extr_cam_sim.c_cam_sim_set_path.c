
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cam_sim {int path_id; } ;



void
cam_sim_set_path(struct cam_sim *sim, u_int32_t path_id)
{
 sim->path_id = path_id;
}
