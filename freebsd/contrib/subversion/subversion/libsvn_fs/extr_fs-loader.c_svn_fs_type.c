
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_7__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int buf ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_READ ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FS_TYPE_FILENAME ;
 int SVN_ERR (int ) ;
 char* SVN_FS_TYPE_BDB ;
 TYPE_1__* SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char*) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_file_close (int *,int *) ;
 TYPE_1__* svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_read_length_line (int *,char*,int*,int *) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_type(const char **fs_type, const char *path, apr_pool_t *pool)
{
  const char *filename;
  char buf[128];
  svn_error_t *err;
  apr_file_t *file;
  apr_size_t len;





  filename = svn_dirent_join(path, FS_TYPE_FILENAME, pool);
  err = svn_io_file_open(&file, filename, APR_READ|APR_BUFFERED, 0, pool);
  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    {
      svn_node_kind_t kind;
      svn_error_t *err2 = svn_io_check_path(path, &kind, pool);
      if (err2)
        {
          svn_error_clear(err2);
          return err;
        }
      if (kind == svn_node_dir)
        {
          svn_error_clear(err);
          *fs_type = SVN_FS_TYPE_BDB;
          return SVN_NO_ERROR;
        }
      return err;
    }
  else if (err)
    return err;

  len = sizeof(buf);
  SVN_ERR(svn_io_read_length_line(file, buf, &len, pool));
  SVN_ERR(svn_io_file_close(file, pool));
  *fs_type = apr_pstrdup(pool, buf);

  return SVN_NO_ERROR;
}
