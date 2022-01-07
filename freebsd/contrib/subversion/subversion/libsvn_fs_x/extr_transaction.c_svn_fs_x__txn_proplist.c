
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_txn_proplist (int **,int ,int ,int *,int *) ;
 int svn_fs_x__txn_get_id (TYPE_1__*) ;

svn_error_t *
svn_fs_x__txn_proplist(apr_hash_t **table_p,
                       svn_fs_txn_t *txn,
                       apr_pool_t *pool)
{
  SVN_ERR(get_txn_proplist(table_p, txn->fs, svn_fs_x__txn_get_id(txn),
                           pool, pool));

  return SVN_NO_ERROR;
}
