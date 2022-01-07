
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_branch__txn_t ;
struct TYPE_9__ {int * txn; } ;
typedef TYPE_1__ svn_branch__state_t ;
struct TYPE_10__ {int rev; int eid; } ;
typedef TYPE_2__ svn_branch__rev_bid_eid_t ;
typedef int svn_branch__el_rev_id_t ;
typedef int svn_branch__eid_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int branch_in_rev_or_txn (TYPE_1__**,TYPE_2__ const*,int *,int *) ;
 int copy_subtree (int *,TYPE_1__*,int ,char const*,int *) ;
 int * svn_branch__el_rev_id_create (TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
branch_state_copy_tree(svn_branch__state_t *to_branch,
                       const svn_branch__rev_bid_eid_t *src_el_rev,
                       svn_branch__eid_t new_parent_eid,
                       const char *new_name,
                       apr_pool_t *scratch_pool)
{
  svn_branch__txn_t *txn = to_branch->txn;
  svn_branch__state_t *src_branch;
  svn_branch__el_rev_id_t *from_el_rev;

  SVN_ERR(branch_in_rev_or_txn(&src_branch, src_el_rev, txn, scratch_pool));
  from_el_rev = svn_branch__el_rev_id_create(src_branch, src_el_rev->eid,
                                             src_el_rev->rev, scratch_pool);
  SVN_ERR(copy_subtree(from_el_rev,
                       to_branch, new_parent_eid, new_name,
                       scratch_pool));

  return SVN_NO_ERROR;
}
