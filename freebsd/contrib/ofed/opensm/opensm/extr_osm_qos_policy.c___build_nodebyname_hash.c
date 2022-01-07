
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int st_data_t ;
struct TYPE_6__ {int p_node_hash; TYPE_1__* p_subn; } ;
typedef TYPE_2__ osm_qos_policy_t ;
struct TYPE_7__ {scalar_t__ print_desc; int map_item; } ;
typedef TYPE_3__ osm_node_t ;
typedef int cl_qmap_t ;
struct TYPE_5__ {int node_guid_tbl; } ;


 int CL_ASSERT (int ) ;
 int cl_qmap_count (int *) ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int st_init_strtable () ;
 int st_insert (int ,int ,int ) ;
 int st_lookup (int ,int ,int *) ;

__attribute__((used)) static void
__build_nodebyname_hash(osm_qos_policy_t * p_qos_policy)
{
 osm_node_t * p_node;
 cl_qmap_t * p_node_guid_tbl = &p_qos_policy->p_subn->node_guid_tbl;

 p_qos_policy->p_node_hash = st_init_strtable();
 CL_ASSERT(p_qos_policy->p_node_hash);

 if (!p_node_guid_tbl || !cl_qmap_count(p_node_guid_tbl))
  return;

 for (p_node = (osm_node_t *) cl_qmap_head(p_node_guid_tbl);
      p_node != (osm_node_t *) cl_qmap_end(p_node_guid_tbl);
      p_node = (osm_node_t *) cl_qmap_next(&p_node->map_item)) {
  if (!st_lookup(p_qos_policy->p_node_hash,
         (st_data_t)p_node->print_desc, ((void*)0)))
   st_insert(p_qos_policy->p_node_hash,
      (st_data_t)p_node->print_desc,
      (st_data_t)p_node);
 }
}
