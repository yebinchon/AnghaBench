
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_2__ trail_t ;
struct TYPE_11__ {int id; int fs; } ;
typedef TYPE_3__ svn_fs_txn_t ;
typedef int svn_error_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int get_txn (TYPE_1__**,int ,int ,int ,TYPE_2__*,int ) ;
 int * put_txn (int ,TYPE_1__*,int ,TYPE_2__*,int ) ;
 int * svn_fs_base__err_txn_not_mutable (int ,int ) ;
 scalar_t__ transaction_kind_dead ;
 scalar_t__ transaction_kind_normal ;

__attribute__((used)) static svn_error_t *
txn_body_abort_txn(void *baton, trail_t *trail)
{
  svn_fs_txn_t *txn = baton;
  transaction_t *fstxn;



  SVN_ERR(get_txn(&fstxn, txn->fs, txn->id, FALSE, trail, trail->pool));
  if (fstxn->kind != transaction_kind_normal)
    return svn_fs_base__err_txn_not_mutable(txn->fs, txn->id);

  fstxn->kind = transaction_kind_dead;
  return put_txn(txn->fs, fstxn, txn->id, trail, trail->pool);
}
