
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct osm_routing_engine {int dummy; } ;
struct TYPE_5__ {int default_routing_engine; } ;
typedef TYPE_1__ osm_opensm_t ;


 int append_routing_engine (TYPE_1__*,struct osm_routing_engine*) ;
 int free (char*) ;
 struct osm_routing_engine* setup_routing_engine (TYPE_1__*,char*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static void setup_routing_engines(osm_opensm_t *osm, const char *engine_names)
{
 char *name, *str, *p;
 struct osm_routing_engine *re;

 if (engine_names && *engine_names) {
  str = strdup(engine_names);
  name = strtok_r(str, ", \t\n", &p);
  while (name && *name) {
   re = setup_routing_engine(osm, name);
   if (re)
    append_routing_engine(osm, re);
   name = strtok_r(((void*)0), ", \t\n", &p);
  }
  free(str);
 }
 if (!osm->default_routing_engine)
  setup_routing_engine(osm, "minhop");
}
