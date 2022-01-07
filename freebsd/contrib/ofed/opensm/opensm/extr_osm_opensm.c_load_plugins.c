
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int plugin_list; int log; } ;
typedef TYPE_1__ osm_opensm_t ;
struct TYPE_7__ {int list; } ;
typedef TYPE_2__ osm_epi_plugin_t ;


 int FILE_ID ;
 int OSM_LOG_ERROR ;
 int cl_qlist_insert_tail (int *,int *) ;
 int free (char*) ;
 TYPE_2__* osm_epi_construct (TYPE_1__*,char*) ;
 int osm_log_v2 (int *,int ,int ,char*,char*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static void load_plugins(osm_opensm_t *osm, const char *plugin_names)
{
 osm_epi_plugin_t *epi;
 char *p_names, *name, *p;

 p_names = strdup(plugin_names);
 name = strtok_r(p_names, ", \t\n", &p);
 while (name && *name) {
  epi = osm_epi_construct(osm, name);
  if (!epi)
   osm_log_v2(&osm->log, OSM_LOG_ERROR, FILE_ID,
       "ERR 1000: cannot load plugin \'%s\'\n",
       name);
  else
   cl_qlist_insert_tail(&osm->plugin_list, &epi->list);
  name = strtok_r(((void*)0), " \t\n", &p);
 }
 free(p_names);
}
