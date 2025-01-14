
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
struct TYPE_4__ {int wrapped_txn; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_branch__txn_abort (int ,int *) ;

__attribute__((used)) static svn_error_t *
nested_branch_txn_abort(svn_branch__txn_t *txn,
                        apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_branch__txn_abort(txn->priv->wrapped_txn,
                                scratch_pool));
  return SVN_NO_ERROR;
}
