
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int osm_switch_t ;
struct TYPE_4__ {int p_log; } ;
typedef TYPE_1__ osm_sm_t ;
typedef int cl_qlist_t ;


 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;
 int * mcast_mgr_find_optimal_switch (TYPE_1__*,int *) ;

osm_switch_t *osm_mcast_mgr_find_root_switch(osm_sm_t * sm, cl_qlist_t *list)
{
 osm_switch_t *p_sw = ((void*)0);

 OSM_LOG_ENTER(sm->p_log);







 p_sw = mcast_mgr_find_optimal_switch(sm, list);

 OSM_LOG_EXIT(sm->p_log);
 return p_sw;
}
