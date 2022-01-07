
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_append (char const*,char const*,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ,int ) ;

svn_error_t *
svn_io_append_file(const char *src, const char *dst, apr_pool_t *pool)
{
  apr_status_t apr_err;
  const char *src_apr, *dst_apr;

  SVN_ERR(cstring_from_utf8(&src_apr, src, pool));
  SVN_ERR(cstring_from_utf8(&dst_apr, dst, pool));

  apr_err = apr_file_append(src_apr, dst_apr, APR_OS_DEFAULT, pool);

  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't append '%s' to '%s'"),
                              svn_dirent_local_style(src, pool),
                              svn_dirent_local_style(dst, pool));

  return SVN_NO_ERROR;
}
