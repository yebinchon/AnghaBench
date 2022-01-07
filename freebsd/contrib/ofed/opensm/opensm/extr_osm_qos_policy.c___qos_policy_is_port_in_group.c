
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int osm_subn_t ;
struct TYPE_3__ {int node_types; int port_map; } ;
typedef TYPE_1__ osm_qos_port_group_t ;
typedef int osm_physp_t ;
typedef int osm_node_t ;
typedef int ib_net64_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int cl_ntoh64 (int ) ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_get (int *,int ) ;
 int osm_node_get_type (int *) ;
 int * osm_physp_get_node_ptr (int const*) ;
 int osm_physp_get_port_guid (int const*) ;

__attribute__((used)) static boolean_t
__qos_policy_is_port_in_group(osm_subn_t * p_subn,
         const osm_physp_t * p_physp,
         osm_qos_port_group_t * p_port_group)
{
 osm_node_t *p_node = osm_physp_get_node_ptr(p_physp);
 ib_net64_t port_guid = osm_physp_get_port_guid(p_physp);
 uint64_t port_guid_ho = cl_ntoh64(port_guid);



 if ( p_port_group->node_types &
      (((uint8_t)1)<<osm_node_get_type(p_node)) )
  return TRUE;



 if (cl_qmap_get(&p_port_group->port_map, port_guid_ho) !=
     cl_qmap_end(&p_port_group->port_map))
  return TRUE;

 return FALSE;
}
