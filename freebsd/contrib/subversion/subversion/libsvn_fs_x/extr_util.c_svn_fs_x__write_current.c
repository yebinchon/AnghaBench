
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_psprintf (int *,char*,int ) ;
 int strlen (char*) ;
 char* svn_fs_x__path_current (int *,int *) ;
 char* svn_fs_x__path_next (int *,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_file_write_full (int *,char*,int ,int *,int *) ;

svn_error_t *
svn_fs_x__write_current(svn_fs_t *fs,
                        svn_revnum_t rev,
                        apr_pool_t *scratch_pool)
{
  char *buf;
  const char *tmp_name, *name;
  apr_file_t *file;


  buf = apr_psprintf(scratch_pool, "%ld\n", rev);

  name = svn_fs_x__path_current(fs, scratch_pool);
  tmp_name = svn_fs_x__path_next(fs, scratch_pool);

  SVN_ERR(svn_io_file_open(&file, tmp_name,
                           APR_WRITE | APR_CREATE | APR_BUFFERED,
                           APR_OS_DEFAULT, scratch_pool));
  SVN_ERR(svn_io_file_write_full(file, buf, strlen(buf), ((void*)0),
                                 scratch_pool));
  SVN_ERR(svn_io_file_close(file, scratch_pool));


  SVN_ERR(svn_io_copy_perms(name, tmp_name, scratch_pool));


  SVN_ERR(svn_io_file_rename2(tmp_name, name, TRUE, scratch_pool));

  return SVN_NO_ERROR;
}
