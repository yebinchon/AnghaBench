
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int free_shared_txn (int *,int ) ;

__attribute__((used)) static svn_error_t *
purge_shared_txn_body(svn_fs_t *fs,
                      const void *baton,
                      apr_pool_t *scratch_pool)
{
  svn_fs_x__txn_id_t txn_id = *(const svn_fs_x__txn_id_t *)baton;

  free_shared_txn(fs, txn_id);

  return SVN_NO_ERROR;
}
