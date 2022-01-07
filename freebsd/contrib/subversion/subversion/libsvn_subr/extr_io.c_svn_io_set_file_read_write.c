
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_ENOTIMPL ;
 int APR_FILE_ATTR_READONLY ;
 int APR_STATUS_IS_ENOENT (scalar_t__) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_file_attrs_set (char const*,int ,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int * io_set_file_perms (char const*,int ,int ,int ,int ,int ,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;

svn_error_t *
svn_io_set_file_read_write(const char *path,
                           svn_boolean_t ignore_enoent,
                           apr_pool_t *pool)
{



  return io_set_file_perms(path, TRUE, TRUE, FALSE, FALSE,
                           ignore_enoent, pool);
}
