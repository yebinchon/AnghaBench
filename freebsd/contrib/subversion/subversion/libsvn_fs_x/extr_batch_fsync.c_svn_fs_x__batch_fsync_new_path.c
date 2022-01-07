
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_READ ;
 int FILE_FLAGS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int internal_open_file (int **,int *,char const*,int ,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_x__batch_fsync_new_path(svn_fs_x__batch_fsync_t *batch,
                               const char *path,
                               apr_pool_t *scratch_pool)
{
  apr_file_t *file;
  svn_node_kind_t kind;



  SVN_ERR(svn_io_check_path(path, &kind, scratch_pool));
  if (kind == svn_node_file)
    SVN_ERR(internal_open_file(&file, batch, path, FILE_FLAGS,
                               scratch_pool));



  return SVN_NO_ERROR;
}
