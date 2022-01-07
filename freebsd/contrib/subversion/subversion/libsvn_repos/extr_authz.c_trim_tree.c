
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_6__ {int sequence_number; } ;
struct TYPE_9__ {TYPE_1__ access; } ;
struct TYPE_8__ {TYPE_2__* pattern_sub_nodes; int sub_nodes; TYPE_5__ rights; } ;
typedef TYPE_3__ node_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int complex; int suffixes; int prefixes; TYPE_3__* any_var; TYPE_3__* any; } ;


 int FALSE ;
 int NO_SEQUENCE_NUMBER ;
 int TRUE ;
 scalar_t__ has_local_rule (TYPE_5__*) ;
 int trim_subnode_array (int *,int,int *) ;
 int trim_subnode_hash (int *,int,int *) ;

__attribute__((used)) static svn_boolean_t
trim_tree(node_t *node,
          int latest_any_var,
          apr_pool_t *scratch_pool)
{
  svn_boolean_t removed_all = TRUE;


  if (!node)
    return TRUE;


  if ( node->pattern_sub_nodes
      && node->pattern_sub_nodes->any_var
      && node->pattern_sub_nodes->any_var->rights.access.sequence_number
         > latest_any_var)
    {
      latest_any_var
        = node->pattern_sub_nodes->any_var->rights.access.sequence_number;
    }


  if (has_local_rule(&node->rights))
    {


      if (node->rights.access.sequence_number >= latest_any_var)
        removed_all = FALSE;
      else
         node->rights.access.sequence_number = NO_SEQUENCE_NUMBER;
    }


  removed_all &= trim_subnode_hash(&node->sub_nodes, latest_any_var,
                                   scratch_pool);

  if (node->pattern_sub_nodes)
    {
      if (trim_tree(node->pattern_sub_nodes->any, latest_any_var,
                    scratch_pool))
        node->pattern_sub_nodes->any = ((void*)0);
      else
        removed_all = FALSE;

      if (trim_tree(node->pattern_sub_nodes->any_var, latest_any_var,
                    scratch_pool))
        node->pattern_sub_nodes->any_var = ((void*)0);
      else
        removed_all = FALSE;

      removed_all &= trim_subnode_array(&node->pattern_sub_nodes->prefixes,
                                        latest_any_var, scratch_pool);
      removed_all &= trim_subnode_array(&node->pattern_sub_nodes->suffixes,
                                        latest_any_var, scratch_pool);
      removed_all &= trim_subnode_array(&node->pattern_sub_nodes->complex,
                                        latest_any_var, scratch_pool);


      if (removed_all)
        node->pattern_sub_nodes = ((void*)0);
    }

  return removed_all;
}
