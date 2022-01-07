
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ node; int node_stored_to_fabric; struct TYPE_4__* port_cache_keys; } ;
typedef TYPE_1__ ibnd_node_cache_t ;


 int destroy_node (scalar_t__) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void _destroy_ibnd_node_cache(ibnd_node_cache_t * node_cache)
{
 free(node_cache->port_cache_keys);
 if (!node_cache->node_stored_to_fabric && node_cache->node)
  destroy_node(node_cache->node);
 free(node_cache);
}
