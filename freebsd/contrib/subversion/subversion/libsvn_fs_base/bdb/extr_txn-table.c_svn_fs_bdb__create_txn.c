
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; int * copies; int * proplist; int const* base_id; int const* root_id; int kind; } ;
typedef TYPE_1__ transaction_t ;
typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int allocate_txn_id (char const**,int *,int *,int *) ;
 int svn_fs_bdb__put_txn (int *,TYPE_1__*,char const*,int *,int *) ;
 int transaction_kind_normal ;

svn_error_t *
svn_fs_bdb__create_txn(const char **txn_name_p,
                       svn_fs_t *fs,
                       const svn_fs_id_t *root_id,
                       trail_t *trail,
                       apr_pool_t *pool)
{
  const char *txn_name;
  transaction_t txn;

  SVN_ERR(allocate_txn_id(&txn_name, fs, trail, pool));
  txn.kind = transaction_kind_normal;
  txn.root_id = root_id;
  txn.base_id = root_id;
  txn.proplist = ((void*)0);
  txn.copies = ((void*)0);
  txn.revision = SVN_INVALID_REVNUM;
  SVN_ERR(svn_fs_bdb__put_txn(fs, &txn, txn_name, trail, pool));

  *txn_name_p = txn_name;
  return SVN_NO_ERROR;
}
