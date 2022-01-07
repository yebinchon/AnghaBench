
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; int * base_id; int * root_id; } ;
typedef TYPE_1__ transaction_t ;
typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_txn (TYPE_1__**,int *,char const*,int ,int *,int *) ;
 int * svn_fs_base__err_txn_not_mutable (int *,char const*) ;
 scalar_t__ transaction_kind_normal ;

svn_error_t *
svn_fs_base__get_txn_ids(const svn_fs_id_t **root_id_p,
                         const svn_fs_id_t **base_root_id_p,
                         svn_fs_t *fs,
                         const char *txn_name,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  transaction_t *txn;

  SVN_ERR(get_txn(&txn, fs, txn_name, FALSE, trail, pool));
  if (txn->kind != transaction_kind_normal)
    return svn_fs_base__err_txn_not_mutable(fs, txn_name);

  *root_id_p = txn->root_id;
  *base_root_id_p = txn->base_id;
  return SVN_NO_ERROR;
}
