
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int osm_log_t ;
typedef int mesh_t ;
struct TYPE_6__ {int num_switches; TYPE_1__* p_osm; } ;
typedef TYPE_2__ lash_t ;
struct TYPE_5__ {int log; } ;


 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 scalar_t__ reorder_node_links (TYPE_2__*,int *,int) ;

__attribute__((used)) static int reorder_links(lash_t *p_lash, mesh_t *mesh)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 int sw;
 int num_switches = p_lash->num_switches;

 OSM_LOG_ENTER(p_log);

 for (sw = 0; sw < num_switches; sw++) {
  if (reorder_node_links(p_lash, mesh, sw)) {
   OSM_LOG_EXIT(p_log);
   return -1;
  }
 }

 OSM_LOG_EXIT(p_log);
 return 0;
}
