
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* plugin_name; int handle; int plugin_data; TYPE_1__* impl; } ;
typedef TYPE_2__ osm_epi_plugin_t ;
struct TYPE_5__ {int (* delete ) (int ) ;} ;


 int dlclose (int ) ;
 int free (TYPE_2__*) ;
 int stub1 (int ) ;

void osm_epi_destroy(osm_epi_plugin_t * plugin)
{
 if (plugin) {
  if (plugin->impl->delete)
   plugin->impl->delete(plugin->plugin_data);
  dlclose(plugin->handle);
  free(plugin->plugin_name);
  free(plugin);
 }
}
