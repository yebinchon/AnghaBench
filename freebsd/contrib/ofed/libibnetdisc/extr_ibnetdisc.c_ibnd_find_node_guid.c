
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ guid; struct TYPE_5__* htnext; } ;
typedef TYPE_1__ ibnd_node_t ;
struct TYPE_6__ {TYPE_1__** nodestbl; } ;
typedef TYPE_2__ ibnd_fabric_t ;


 int HASHGUID (scalar_t__) ;
 int HTSZ ;
 int IBND_DEBUG (char*) ;

ibnd_node_t *ibnd_find_node_guid(ibnd_fabric_t * fabric, uint64_t guid)
{
 int hash = HASHGUID(guid) % HTSZ;
 ibnd_node_t *node;

 if (!fabric) {
  IBND_DEBUG("fabric parameter NULL\n");
  return ((void*)0);
 }

 for (node = fabric->nodestbl[hash]; node; node = node->htnext)
  if (node->guid == guid)
   return node;

 return ((void*)0);
}
