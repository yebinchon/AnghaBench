
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_base__retry_txn (int *,int ,int *,int ,int *) ;
 int txn_body_youngest_rev ;

svn_error_t *
svn_fs_base__youngest_rev(svn_revnum_t *youngest_p,
                          svn_fs_t *fs,
                          apr_pool_t *pool)
{
  svn_revnum_t youngest;
  SVN_ERR(svn_fs__check_fs(fs, TRUE));
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_youngest_rev, &youngest,
                                 TRUE, pool));
  *youngest_p = youngest;
  return SVN_NO_ERROR;
}
