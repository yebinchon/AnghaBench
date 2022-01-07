
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* htnext; struct TYPE_7__* next; TYPE_1__* node; } ;
typedef TYPE_2__ ibnd_node_cache_t ;
struct TYPE_8__ {TYPE_2__** nodescachetbl; TYPE_2__* nodes_cache; } ;
typedef TYPE_3__ ibnd_fabric_cache_t ;
struct TYPE_6__ {int guid; } ;


 int HASHGUID (int ) ;
 int HTSZ ;

__attribute__((used)) static void store_node_cache(ibnd_node_cache_t * node_cache,
        ibnd_fabric_cache_t * fabric_cache)
{
 int hash_indx = HASHGUID(node_cache->node->guid) % HTSZ;

 node_cache->next = fabric_cache->nodes_cache;
 fabric_cache->nodes_cache = node_cache;

 node_cache->htnext = fabric_cache->nodescachetbl[hash_indx];
 fabric_cache->nodescachetbl[hash_indx] = node_cache;
}
