
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int first_eid; } ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
branch_txn_get_num_new_eids(const svn_branch__txn_t *txn,
                            int *num_new_eids_p,
                            apr_pool_t *scratch_pool)
{
  if (num_new_eids_p)
    *num_new_eids_p = -1 - txn->priv->first_eid;
  return SVN_NO_ERROR;
}
