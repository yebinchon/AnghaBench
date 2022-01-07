
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; int proplist; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_7__ {int fs; int pool; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_error_t ;
struct txn_proplist_args {int * table_p; int id; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_txn (TYPE_1__**,int ,int ,int ,TYPE_2__*,int ) ;
 int * svn_fs_base__err_txn_not_mutable (int ,int ) ;
 scalar_t__ transaction_kind_normal ;

__attribute__((used)) static svn_error_t *
txn_body_txn_proplist(void *baton, trail_t *trail)
{
  transaction_t *txn;
  struct txn_proplist_args *args = baton;

  SVN_ERR(get_txn(&txn, trail->fs, args->id, FALSE, trail, trail->pool));
  if (txn->kind != transaction_kind_normal)
    return svn_fs_base__err_txn_not_mutable(trail->fs, args->id);

  *(args->table_p) = txn->proplist;
  return SVN_NO_ERROR;
}
