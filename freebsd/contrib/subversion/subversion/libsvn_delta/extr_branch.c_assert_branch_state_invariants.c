
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; TYPE_5__* txn; TYPE_5__* bid; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_9__ {struct TYPE_9__* e_map; } ;
struct TYPE_7__ {TYPE_5__* element_tree; } ;


 int * apr_hash_first (int *,TYPE_5__*) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_val (int *) ;
 int assert (TYPE_5__*) ;
 int branch_validate_element (TYPE_2__ const*,int ,int ) ;
 int svn_eid__hash_this_key (int *) ;

__attribute__((used)) static void
assert_branch_state_invariants(const svn_branch__state_t *branch,
                               apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  assert(branch->bid);
  assert(branch->txn);
  assert(branch->priv->element_tree);
  assert(branch->priv->element_tree->e_map);


  for (hi = apr_hash_first(scratch_pool, branch->priv->element_tree->e_map);
       hi; hi = apr_hash_next(hi))
    {
      branch_validate_element(branch, svn_eid__hash_this_key(hi),
                              apr_hash_this_val(hi));
    }
}
