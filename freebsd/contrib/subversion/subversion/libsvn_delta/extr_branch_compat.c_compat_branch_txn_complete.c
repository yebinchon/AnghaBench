
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_branch__txn_t ;
struct TYPE_8__ {int txn; int dedit_baton; TYPE_1__* deditor; } ;
typedef TYPE_3__ svn_branch__txn_priv_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int (* abort_edit ) (int ,int *) ;int (* close_edit ) (int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * drive_changes (TYPE_3__*,int *) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;
 int svn_branch__txn_complete (int ,int *) ;
 int svn_branch__txn_finalize_eids (int ,int *) ;
 int svn_branch__txn_sequence_point (int ,int *) ;
 int svn_error_clear (int ) ;
 int * svn_error_compose_create (int *,int ) ;

__attribute__((used)) static svn_error_t *
compat_branch_txn_complete(svn_branch__txn_t *txn,
                           apr_pool_t *scratch_pool)
{
  svn_branch__txn_priv_t *eb = txn->priv;
  svn_error_t *err;


  SVN_ERR(svn_branch__txn_sequence_point(txn->priv->txn, scratch_pool));
  SVN_ERR(svn_branch__txn_finalize_eids(txn->priv->txn, scratch_pool));

  err = drive_changes(eb, scratch_pool);

  if (!err)
     {
       err = svn_error_compose_create(err, eb->deditor->close_edit(
                                                            eb->dedit_baton,
                                                            scratch_pool));
     }

  if (err)
    svn_error_clear(eb->deditor->abort_edit(eb->dedit_baton, scratch_pool));

  SVN_ERR(svn_branch__txn_complete(txn->priv->txn, scratch_pool));

  return err;
}
