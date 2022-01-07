
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int plugin_list; } ;
typedef TYPE_1__ osm_opensm_t ;
typedef int osm_epi_plugin_t ;


 int cl_is_qlist_empty (int *) ;
 scalar_t__ cl_qlist_remove_head (int *) ;
 int osm_epi_destroy (int *) ;

__attribute__((used)) static void destroy_plugins(osm_opensm_t *osm)
{
 osm_epi_plugin_t *p;

 while (!cl_is_qlist_empty(&osm->plugin_list)){
  p = (osm_epi_plugin_t *)cl_qlist_remove_head(&osm->plugin_list);

  osm_epi_destroy(p);
 }
}
