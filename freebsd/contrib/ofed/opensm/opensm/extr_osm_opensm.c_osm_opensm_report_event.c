
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int plugin_list; } ;
typedef TYPE_2__ osm_opensm_t ;
struct TYPE_7__ {int plugin_data; TYPE_1__* impl; } ;
typedef TYPE_3__ osm_epi_plugin_t ;
typedef int osm_epi_event_id_t ;
typedef int cl_list_item_t ;
struct TYPE_5__ {int (* report ) (int ,int ,void*) ;} ;


 int * cl_qlist_end (int *) ;
 int * cl_qlist_head (int *) ;
 int * cl_qlist_next (int *) ;
 int osm_exit_flag ;
 int stub1 (int ,int ,void*) ;

void osm_opensm_report_event(osm_opensm_t *osm, osm_epi_event_id_t event_id,
        void *event_data)
{
 cl_list_item_t *item;

 for (item = cl_qlist_head(&osm->plugin_list);
      !osm_exit_flag && item != cl_qlist_end(&osm->plugin_list);
      item = cl_qlist_next(item)) {
  osm_epi_plugin_t *p = (osm_epi_plugin_t *)item;
  if (p->impl->report)
   p->impl->report(p->plugin_data, event_id, event_data);
 }
}
