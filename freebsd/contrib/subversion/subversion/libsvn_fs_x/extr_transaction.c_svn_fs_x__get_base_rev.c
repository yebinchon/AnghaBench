
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_3__ {int base_rev; } ;
typedef TYPE_1__ svn_fs_x__transaction_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__get_txn (TYPE_1__**,int *,int ,int *) ;

svn_error_t *
svn_fs_x__get_base_rev(svn_revnum_t *revnum,
                       svn_fs_t *fs,
                       svn_fs_x__txn_id_t txn_id,
                       apr_pool_t *scratch_pool)
{
  svn_fs_x__transaction_t *txn;
  SVN_ERR(svn_fs_x__get_txn(&txn, fs, txn_id, scratch_pool));
  *revnum = txn->base_rev;

  return SVN_NO_ERROR;
}
