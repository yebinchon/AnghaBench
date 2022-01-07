
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_10__ {int parent_eid; } ;
typedef TYPE_2__ svn_element__content_t ;
struct TYPE_11__ {TYPE_1__* priv; int bid; } ;
typedef TYPE_3__ svn_branch__state_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_12__ {int root_eid; int e_map; } ;
struct TYPE_9__ {TYPE_4__* element_tree; } ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 int branch_finalize_bid (int ,int,int ) ;
 int branch_state_pool_get (TYPE_3__*) ;
 int svn_eid__hash_this_key (int *) ;
 int svn_element__tree_set (TYPE_4__*,int,TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
branch_finalize_eids(svn_branch__state_t *branch,
                     int mapping_offset,
                     apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  branch->bid = branch_finalize_bid(branch->bid, mapping_offset,
                                    branch_state_pool_get(branch));
  if (branch->priv->element_tree->root_eid < -1)
    {
      branch->priv->element_tree->root_eid
        = mapping_offset - branch->priv->element_tree->root_eid;
    }

  for (hi = apr_hash_first(scratch_pool, branch->priv->element_tree->e_map);
       hi; hi = apr_hash_next(hi))
    {
      int old_eid = svn_eid__hash_this_key(hi);
      svn_element__content_t *element = apr_hash_this_val(hi);

      if (old_eid < -1)
        {
          int new_eid = mapping_offset - old_eid;

          svn_element__tree_set(branch->priv->element_tree, old_eid, ((void*)0));
          svn_element__tree_set(branch->priv->element_tree, new_eid, element);
        }
      if (element->parent_eid < -1)
        {
          element->parent_eid = mapping_offset - element->parent_eid;
        }
    }
  return SVN_NO_ERROR;
}
