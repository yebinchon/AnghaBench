
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; int base_id; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_8__ {int pool; int fs; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct open_txn_args {int name; int * txn_p; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int get_txn (TYPE_1__**,int ,int ,int ,TYPE_2__*,int ) ;
 int make_txn (int ,int ,int ,int ) ;
 char* svn_fs_base__id_txn_id (int ) ;
 int svn_fs_base__txn_get_revision (int *,int ,char const*,TYPE_2__*,int ) ;
 scalar_t__ transaction_kind_committed ;

__attribute__((used)) static svn_error_t *
txn_body_open_txn(void *baton, trail_t *trail)
{
  struct open_txn_args *args = baton;
  transaction_t *fstxn;
  svn_revnum_t base_rev = SVN_INVALID_REVNUM;
  const char *txn_id;

  SVN_ERR(get_txn(&fstxn, trail->fs, args->name, FALSE, trail, trail->pool));
  if (fstxn->kind != transaction_kind_committed)
    {
      txn_id = svn_fs_base__id_txn_id(fstxn->base_id);
      SVN_ERR(svn_fs_base__txn_get_revision(&base_rev, trail->fs, txn_id,
                                            trail, trail->pool));
    }

  *args->txn_p = make_txn(trail->fs, args->name, base_rev, trail->pool);
  return SVN_NO_ERROR;
}
