
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * root_id; } ;
typedef TYPE_1__ transaction_t ;
typedef int trail_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_rev_txn (TYPE_1__**,int *,int *,int ,int *,int *) ;
 int * svn_fs_base__err_corrupt_fs_revision (int *,int ) ;

svn_error_t *
svn_fs_base__rev_get_root(const svn_fs_id_t **root_id_p,
                          svn_fs_t *fs,
                          svn_revnum_t rev,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  transaction_t *txn;

  SVN_ERR(get_rev_txn(&txn, ((void*)0), fs, rev, trail, pool));
  if (txn->root_id == ((void*)0))
    return svn_fs_base__err_corrupt_fs_revision(fs, rev);

  *root_id_p = txn->root_id;
  return SVN_NO_ERROR;
}
