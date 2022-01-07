
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int ibnd_node_t ;
struct TYPE_5__ {TYPE_2__* chassis; } ;
typedef TYPE_1__ ibnd_fabric_t ;
struct TYPE_6__ {scalar_t__ chassisguid; struct TYPE_6__* next; } ;
typedef TYPE_2__ ibnd_chassis_t ;


 scalar_t__ get_chassisguid (int *) ;

__attribute__((used)) static ibnd_chassis_t *find_chassisguid(ibnd_fabric_t * fabric,
     ibnd_node_t * node)
{
 ibnd_chassis_t *current;
 uint64_t chguid;

 chguid = get_chassisguid(node);
 for (current = fabric->chassis; current; current = current->next)
  if (current->chassisguid == chguid)
   return current;

 return ((void*)0);
}
