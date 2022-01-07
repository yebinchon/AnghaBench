
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ filetype; } ;
typedef TYPE_1__ apr_finfo_t ;


 int APR_FINFO_TYPE ;
 scalar_t__ APR_FROM_OS_ERROR (int ) ;
 scalar_t__ APR_REG ;
 scalar_t__ APR_STATUS_IS_EACCES (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EEXIST (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_ENOENT (scalar_t__) ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_SHARING_VIOLATION ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN__APR_STATUS_IS_ENOTDIR (scalar_t__) ;
 int WIN32_RETRY_LOOP (scalar_t__,scalar_t__) ;
 int _ (char*) ;
 scalar_t__ apr_file_remove (char const*,int *) ;
 int apr_stat (TYPE_1__*,char const*,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 int svn_io_set_file_read_write (char const*,scalar_t__,int *) ;

svn_error_t *
svn_io_remove_file2(const char *path,
                    svn_boolean_t ignore_enoent,
                    apr_pool_t *scratch_pool)
{
  apr_status_t apr_err;
  const char *path_apr;

  SVN_ERR(cstring_from_utf8(&path_apr, path, scratch_pool));

  apr_err = apr_file_remove(path_apr, scratch_pool);
  if (!apr_err)
    {
      return SVN_NO_ERROR;
    }
  else if (ignore_enoent && (APR_STATUS_IS_ENOENT(apr_err)
                             || SVN__APR_STATUS_IS_ENOTDIR(apr_err)))
    {
      return SVN_NO_ERROR;
    }
  else
    {
      return svn_error_wrap_apr(apr_err, _("Can't remove file '%s'"),
                                svn_dirent_local_style(path, scratch_pool));
    }
}
