
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int rights; } ;
struct TYPE_15__ {int max_rights; int min_rights; TYPE_1__ access; } ;
struct TYPE_14__ {TYPE_2__* pattern_sub_nodes; int sub_nodes; TYPE_4__ rights; } ;
typedef TYPE_3__ node_t ;
typedef TYPE_4__ limited_rights_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int suffixes; int prefixes; int complex; TYPE_3__* any_var; TYPE_3__* any; } ;


 int authz_access_none ;
 int authz_access_write ;
 int combine_right_limits (TYPE_4__*,TYPE_4__*) ;
 int finalize_subnode_array (int ,TYPE_4__*,int *) ;
 int finalize_subnode_hash (int ,TYPE_4__*,int *) ;
 scalar_t__ has_local_rule (TYPE_4__*) ;
 int link_prefix_patterns (int ) ;

__attribute__((used)) static void
finalize_tree(node_t *node,
              limited_rights_t *sum,
              apr_pool_t *scratch_pool)
{
  limited_rights_t *local_sum = &node->rights;


  if (!node)
    return;


  if (has_local_rule(local_sum))
    {
      local_sum->max_rights = local_sum->access.rights;
      local_sum->min_rights = local_sum->access.rights;
    }
  else
    {
      local_sum->min_rights = authz_access_write;
      local_sum->max_rights = authz_access_none;
    }


  finalize_subnode_hash(node->sub_nodes, local_sum, scratch_pool);

  if (node->pattern_sub_nodes)
    {
      finalize_tree(node->pattern_sub_nodes->any, local_sum, scratch_pool);
      finalize_tree(node->pattern_sub_nodes->any_var, local_sum, scratch_pool);

      finalize_subnode_array(node->pattern_sub_nodes->prefixes, local_sum,
                             scratch_pool);
      finalize_subnode_array(node->pattern_sub_nodes->suffixes, local_sum,
                             scratch_pool);
      finalize_subnode_array(node->pattern_sub_nodes->complex, local_sum,
                             scratch_pool);


      link_prefix_patterns(node->pattern_sub_nodes->prefixes);
      link_prefix_patterns(node->pattern_sub_nodes->suffixes);
    }



  combine_right_limits(sum, local_sum);
}
