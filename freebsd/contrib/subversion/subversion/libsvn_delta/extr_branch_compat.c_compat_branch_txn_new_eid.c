
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int svn_branch__eid_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int txn; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_branch__txn_new_eid (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
compat_branch_txn_new_eid(svn_branch__txn_t *txn,
                          svn_branch__eid_t *eid_p,
                          apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_branch__txn_new_eid(txn->priv->txn,
                                  eid_p,
                                  scratch_pool));
  return SVN_NO_ERROR;
}
