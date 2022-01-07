
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int APR_SET ;
 int FILE_FLAGS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int internal_open_file (int **,int *,char const*,int ,int *) ;
 int svn_io_file_seek (int *,int ,int *,int *) ;

svn_error_t *
svn_fs_x__batch_fsync_open_file(apr_file_t **file,
                                svn_fs_x__batch_fsync_t *batch,
                                const char *filename,
                                apr_pool_t *scratch_pool)
{
  apr_off_t offset = 0;

  SVN_ERR(internal_open_file(file, batch, filename, FILE_FLAGS,
                             scratch_pool));
  SVN_ERR(svn_io_file_seek(*file, APR_SET, &offset, scratch_pool));

  return SVN_NO_ERROR;
}
