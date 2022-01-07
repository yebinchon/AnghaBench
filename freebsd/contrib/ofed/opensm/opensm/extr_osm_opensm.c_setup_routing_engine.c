
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct routing_engine_module {char const* name; scalar_t__ (* setup ) (struct osm_routing_engine*,TYPE_1__*) ;} ;
struct osm_routing_engine {char const* name; scalar_t__ type; } ;
struct TYPE_4__ {int log; struct osm_routing_engine* default_routing_engine; int no_fallback_routing_engine; } ;
typedef TYPE_1__ osm_opensm_t ;


 int OSM_LOG (int *,int ,char*,...) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_VERBOSE ;
 scalar_t__ OSM_ROUTING_ENGINE_TYPE_MINHOP ;
 int TRUE ;
 int free (struct osm_routing_engine*) ;
 struct osm_routing_engine* malloc (int) ;
 int memset (struct osm_routing_engine*,int ,int) ;
 scalar_t__ osm_routing_engine_type (char const*) ;
 struct routing_engine_module* routing_modules ;
 int strcmp (char const*,char const*) ;
 scalar_t__ stub1 (struct osm_routing_engine*,TYPE_1__*) ;

__attribute__((used)) static struct osm_routing_engine *setup_routing_engine(osm_opensm_t *osm,
             const char *name)
{
 struct osm_routing_engine *re;
 const struct routing_engine_module *m;

 if (!strcmp(name, "no_fallback")) {
  osm->no_fallback_routing_engine = TRUE;
  return ((void*)0);
 }

 for (m = routing_modules; m->name && *m->name; m++) {
  if (!strcmp(m->name, name)) {
   re = malloc(sizeof(struct osm_routing_engine));
   if (!re) {
    OSM_LOG(&osm->log, OSM_LOG_VERBOSE,
     "memory allocation failed\n");
    return ((void*)0);
   }
   memset(re, 0, sizeof(struct osm_routing_engine));

   re->name = m->name;
   re->type = osm_routing_engine_type(m->name);
   if (m->setup(re, osm)) {
    OSM_LOG(&osm->log, OSM_LOG_VERBOSE,
     "setup of routing"
     " engine \'%s\' failed\n", name);
    free(re);
    return ((void*)0);
   }
   OSM_LOG(&osm->log, OSM_LOG_DEBUG,
    "\'%s\' routing engine set up\n", re->name);
   if (re->type == OSM_ROUTING_ENGINE_TYPE_MINHOP)
    osm->default_routing_engine = re;
   return re;
  }
 }

 OSM_LOG(&osm->log, OSM_LOG_ERROR,
  "cannot find or setup routing engine \'%s\'\n", name);
 return ((void*)0);
}
