
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int time_t ;
struct query_info {int dummy; } ;
struct mesh_area {int dummy; } ;


 int mesh_schedule_prefetch (struct mesh_area*,struct query_info*,int ,int ,int) ;

void mesh_new_prefetch(struct mesh_area* mesh, struct query_info* qinfo,
        uint16_t qflags, time_t leeway)
{
 mesh_schedule_prefetch(mesh, qinfo, qflags, leeway, 1);
}
