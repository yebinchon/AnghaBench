
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_psprintf (int *,char*,int ) ;
 int strlen (char*) ;
 int svn_fs_x__batch_fsync_open_file (int **,int *,char const*,int *) ;
 char* svn_fs_x__path_current (int *,int *) ;
 char* svn_fs_x__path_next (int *,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_file_write_full (int *,char*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
write_next_file(svn_fs_t *fs,
                svn_revnum_t revision,
                svn_fs_x__batch_fsync_t *batch,
                apr_pool_t *scratch_pool)
{
  apr_file_t *file;
  const char *path = svn_fs_x__path_next(fs, scratch_pool);
  const char *perms_path = svn_fs_x__path_current(fs, scratch_pool);
  char *buf;


  SVN_ERR(svn_fs_x__batch_fsync_open_file(&file, batch, path, scratch_pool));


  buf = apr_psprintf(scratch_pool, "%ld\n", revision);
  SVN_ERR(svn_io_file_write_full(file, buf, strlen(buf), ((void*)0), scratch_pool));


  SVN_ERR(svn_io_copy_perms(perms_path, path, scratch_pool));

  return SVN_NO_ERROR;
}
