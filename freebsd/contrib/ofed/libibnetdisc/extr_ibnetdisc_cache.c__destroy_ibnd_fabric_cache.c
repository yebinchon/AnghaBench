
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* port; int port_stored_to_fabric; struct TYPE_7__* next; struct TYPE_7__* ports_cache; TYPE_2__* nodes_cache; } ;
typedef TYPE_1__ ibnd_port_cache_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_2__ ibnd_node_cache_t ;
typedef TYPE_1__ ibnd_fabric_cache_t ;


 int _destroy_ibnd_node_cache (TYPE_2__*) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void _destroy_ibnd_fabric_cache(ibnd_fabric_cache_t * fabric_cache)
{
 ibnd_node_cache_t *node_cache;
 ibnd_node_cache_t *node_cache_next;
 ibnd_port_cache_t *port_cache;
 ibnd_port_cache_t *port_cache_next;

 if (!fabric_cache)
  return;

 node_cache = fabric_cache->nodes_cache;
 while (node_cache) {
  node_cache_next = node_cache->next;

  _destroy_ibnd_node_cache(node_cache);

  node_cache = node_cache_next;
 }

 port_cache = fabric_cache->ports_cache;
 while (port_cache) {
  port_cache_next = port_cache->next;

  if (!port_cache->port_stored_to_fabric && port_cache->port)
   free(port_cache->port);
  free(port_cache);

  port_cache = port_cache_next;
 }

 free(fabric_cache);
}
