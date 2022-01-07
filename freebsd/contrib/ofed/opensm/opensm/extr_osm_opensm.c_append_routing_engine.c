
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct osm_routing_engine {struct osm_routing_engine* next; } ;
struct TYPE_3__ {struct osm_routing_engine* routing_engine_list; } ;
typedef TYPE_1__ osm_opensm_t ;



__attribute__((used)) static void append_routing_engine(osm_opensm_t *osm,
      struct osm_routing_engine *routing_engine)
{
 struct osm_routing_engine *r;

 routing_engine->next = ((void*)0);

 if (!osm->routing_engine_list) {
  osm->routing_engine_list = routing_engine;
  return;
 }

 r = osm->routing_engine_list;
 while (r->next)
  r = r->next;

 r->next = routing_engine;
}
