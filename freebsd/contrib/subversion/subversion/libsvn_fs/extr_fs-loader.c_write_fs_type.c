
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int FS_TYPE_FILENAME ;
 int SVN_ERR (int ) ;
 int strlen (char const*) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_file_write_full (int *,char const*,int,int *,int *) ;

__attribute__((used)) static svn_error_t *
write_fs_type(const char *path, const char *fs_type, apr_pool_t *pool)
{
  const char *filename;
  apr_file_t *file;

  filename = svn_dirent_join(path, FS_TYPE_FILENAME, pool);
  SVN_ERR(svn_io_file_open(&file, filename,
                           APR_WRITE|APR_CREATE|APR_TRUNCATE|APR_BUFFERED,
                           APR_OS_DEFAULT, pool));
  SVN_ERR(svn_io_file_write_full(file, fs_type, strlen(fs_type), ((void*)0),
                                 pool));
  SVN_ERR(svn_io_file_write_full(file, "\n", 1, ((void*)0), pool));
  return svn_error_trace(svn_io_file_close(file, pool));
}
