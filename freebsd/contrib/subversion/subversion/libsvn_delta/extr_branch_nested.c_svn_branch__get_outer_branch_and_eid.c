
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int txn; int bid; } ;
typedef TYPE_1__ svn_branch__state_t ;
typedef int apr_pool_t ;


 int svn_branch__id_unnest (char const**,int*,int ,int *) ;
 TYPE_1__* svn_branch__txn_get_branch_by_id (int ,char const*,int *) ;

void
svn_branch__get_outer_branch_and_eid(svn_branch__state_t **outer_branch_p,
                                     int *outer_eid_p,
                                     const svn_branch__state_t *branch,
                                     apr_pool_t *scratch_pool)
{
  const char *outer_bid;

  svn_branch__id_unnest(&outer_bid, outer_eid_p, branch->bid, scratch_pool);
  *outer_branch_p = ((void*)0);
  if (outer_bid)
    {
      *outer_branch_p
        = svn_branch__txn_get_branch_by_id(branch->txn, outer_bid,
                                           scratch_pool);
    }
}
