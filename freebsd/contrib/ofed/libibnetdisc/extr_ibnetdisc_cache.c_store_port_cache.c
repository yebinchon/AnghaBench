
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* htnext; struct TYPE_7__* next; TYPE_1__* port; } ;
typedef TYPE_2__ ibnd_port_cache_t ;
struct TYPE_8__ {TYPE_2__** portscachetbl; TYPE_2__* ports_cache; } ;
typedef TYPE_3__ ibnd_fabric_cache_t ;
struct TYPE_6__ {int guid; } ;


 int HASHGUID (int ) ;
 int HTSZ ;

__attribute__((used)) static void store_port_cache(ibnd_port_cache_t * port_cache,
        ibnd_fabric_cache_t * fabric_cache)
{
 int hash_indx = HASHGUID(port_cache->port->guid) % HTSZ;

 port_cache->next = fabric_cache->ports_cache;
 fabric_cache->ports_cache = port_cache;

 port_cache->htnext = fabric_cache->portscachetbl[hash_indx];
 fabric_cache->portscachetbl[hash_indx] = port_cache;
}
