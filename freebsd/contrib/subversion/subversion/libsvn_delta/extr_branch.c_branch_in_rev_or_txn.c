
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int repos; } ;
typedef TYPE_1__ svn_branch__txn_t ;
typedef int svn_branch__state_t ;
struct TYPE_7__ {int bid; int rev; } ;
typedef TYPE_2__ svn_branch__rev_bid_eid_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int svn_branch__repos_get_branch_by_id (int **,int ,int ,int ,int *) ;
 int * svn_branch__txn_get_branch_by_id (TYPE_1__*,int ,int *) ;

__attribute__((used)) static svn_error_t *
branch_in_rev_or_txn(svn_branch__state_t **src_branch,
                     const svn_branch__rev_bid_eid_t *src_el_rev,
                     svn_branch__txn_t *txn,
                     apr_pool_t *result_pool)
{
  if (SVN_IS_VALID_REVNUM(src_el_rev->rev))
    {
      SVN_ERR(svn_branch__repos_get_branch_by_id(src_branch,
                                                 txn->repos,
                                                 src_el_rev->rev,
                                                 src_el_rev->bid,
                                                 result_pool));
    }
  else
    {
      *src_branch
        = svn_branch__txn_get_branch_by_id(txn, src_el_rev->bid, result_pool);
    }

  return SVN_NO_ERROR;
}
