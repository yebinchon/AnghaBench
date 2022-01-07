
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int svn_branch__subtree_t ;
typedef int svn_branch__state_t ;
struct TYPE_10__ {int eid; } ;
typedef TYPE_3__ svn_branch__rev_bid_eid_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int wrapped_txn; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int branch_in_rev_or_txn (int **,TYPE_3__*,int ,int *) ;
 int svn_branch__get_subtree (int *,int **,int ,int *) ;
 int svn_branch__instantiate_elements_r (int *,int ,int *) ;
 int svn_branch__txn_open_branch (int ,int **,char const*,int,TYPE_3__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
nested_branch_txn_open_branch(svn_branch__txn_t *txn,
                              svn_branch__state_t **new_branch_p,
                              const char *new_branch_id,
                              int root_eid,
                              svn_branch__rev_bid_eid_t *tree_ref,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  svn_branch__state_t *new_branch;

  SVN_ERR(svn_branch__txn_open_branch(txn->priv->wrapped_txn,
                                      &new_branch,
                                      new_branch_id, root_eid, tree_ref,
                                      result_pool,
                                      scratch_pool));


  if (tree_ref)
    {
      svn_branch__state_t *from_branch;
      svn_branch__subtree_t *from_subtree;



      SVN_ERR(branch_in_rev_or_txn(&from_branch, tree_ref,
                                   txn->priv->wrapped_txn, scratch_pool));
      SVN_ERR(svn_branch__get_subtree(from_branch, &from_subtree,
                                      tree_ref->eid, scratch_pool));
      SVN_ERR(svn_branch__instantiate_elements_r(new_branch, *from_subtree,
                                                 scratch_pool));
    }

  if (new_branch_p)
    *new_branch_p = new_branch;
  return SVN_NO_ERROR;
}
