
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char const*,char*,int ) ;
 int svn_fs_x__batch_fsync_open_file (int **,int *,char const*,int *) ;
 char* svn_fs_x__path_revprops (int *,int ,int *) ;
 int svn_fs_x__write_non_packed_revprops (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
write_non_packed_revprop(const char **final_path,
                         const char **tmp_path,
                         svn_fs_t *fs,
                         svn_revnum_t rev,
                         apr_hash_t *proplist,
                         svn_fs_x__batch_fsync_t *batch,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  apr_file_t *file;
  *final_path = svn_fs_x__path_revprops(fs, rev, result_pool);

  *tmp_path = apr_pstrcat(result_pool, *final_path, ".tmp", SVN_VA_NULL);
  SVN_ERR(svn_fs_x__batch_fsync_open_file(&file, batch, *tmp_path,
                                          scratch_pool));

  SVN_ERR(svn_fs_x__write_non_packed_revprops(file, proplist, scratch_pool));

  return SVN_NO_ERROR;
}
