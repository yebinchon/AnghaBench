
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ osm_qos_port_group_t ;
struct TYPE_6__ {int port_groups; } ;
typedef TYPE_2__ osm_qos_policy_t ;
typedef scalar_t__ cl_list_iterator_t ;


 scalar_t__ cl_list_end (int *) ;
 scalar_t__ cl_list_head (int *) ;
 scalar_t__ cl_list_next (scalar_t__) ;
 scalar_t__ cl_list_obj (scalar_t__) ;
 scalar_t__ strcasecmp (char const* const,int ) ;

__attribute__((used)) static osm_qos_port_group_t *__qos_policy_get_port_group_by_name(
  const osm_qos_policy_t * p_qos_policy,
  const char *const name)
{
 osm_qos_port_group_t *p_port_group = ((void*)0);
 cl_list_iterator_t list_iterator;

 list_iterator = cl_list_head(&p_qos_policy->port_groups);
 while (list_iterator != cl_list_end(&p_qos_policy->port_groups)) {
  p_port_group =
      (osm_qos_port_group_t *) cl_list_obj(list_iterator);
  if (!p_port_group)
   continue;


  if (strcasecmp(name, p_port_group->name) == 0)
   return p_port_group;

  list_iterator = cl_list_next(list_iterator);
 }

 return ((void*)0);
}
