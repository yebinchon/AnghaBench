
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__begin_txn (int **,int *,int ,int ,int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_begin_txn(svn_fs_txn_t **txn_p,
            svn_fs_t *fs,
            svn_revnum_t rev,
            apr_uint32_t flags,
            apr_pool_t *pool)
{
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  SVN_ERR(svn_fs_x__begin_txn(txn_p, fs, rev, flags, pool, scratch_pool));
  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
