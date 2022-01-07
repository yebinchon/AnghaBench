
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_branch__txn_t ;
struct TYPE_7__ {int txn; int dedit_baton; TYPE_1__* deditor; } ;
typedef TYPE_3__ svn_branch__txn_priv_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* abort_edit ) (int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int *) ;
 int svn_branch__txn_abort (int ,int *) ;

__attribute__((used)) static svn_error_t *
compat_branch_txn_abort(svn_branch__txn_t *txn,
                        apr_pool_t *scratch_pool)
{
  svn_branch__txn_priv_t *eb = txn->priv;

  SVN_ERR(eb->deditor->abort_edit(eb->dedit_baton, scratch_pool));

  SVN_ERR(svn_branch__txn_abort(txn->priv->txn,
                                scratch_pool));
  return SVN_NO_ERROR;
}
