
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct osm_routing_engine {int context; int (* destroy ) (int ) ;struct osm_routing_engine* next; } ;
struct TYPE_3__ {struct osm_routing_engine* routing_engine_list; } ;
typedef TYPE_1__ osm_opensm_t ;


 int free (struct osm_routing_engine*) ;
 int stub1 (int ) ;

__attribute__((used)) static void destroy_routing_engines(osm_opensm_t *osm)
{
 struct osm_routing_engine *r, *next;

 next = osm->routing_engine_list;
 while (next) {
  r = next;
  next = r->next;
  if (r->destroy)
   r->destroy(r->context);
  free(r);
 }
}
