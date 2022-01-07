
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int osm_mcast_work_obj_t ;
typedef int cl_qlist_t ;


 scalar_t__ cl_qlist_count (int *) ;
 scalar_t__ cl_qlist_remove_head (int *) ;
 int mcast_work_obj_delete (int *) ;

void osm_mcast_drop_port_list(cl_qlist_t * list)
{
 while (cl_qlist_count(list))
  mcast_work_obj_delete((osm_mcast_work_obj_t *)
          cl_qlist_remove_head(list));
}
