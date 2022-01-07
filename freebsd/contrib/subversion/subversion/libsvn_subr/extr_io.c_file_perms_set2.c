
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_fileperms_t ;
typedef int apr_file_t ;


 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_name_get (char const**,int *) ;
 scalar_t__ apr_file_perms_set (char const*,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ,...) ;
 int try_utf8_from_internal_style (char const*,int *) ;

__attribute__((used)) static svn_error_t *
file_perms_set2(apr_file_t* file, apr_fileperms_t perms, apr_pool_t *pool)
{
  const char *fname_apr;
  apr_status_t status;

  status = apr_file_name_get(&fname_apr, file);
  if (status)
    return svn_error_wrap_apr(status, _("Can't get file name"));

  status = apr_file_perms_set(fname_apr, perms);
  if (status)
    return svn_error_wrap_apr(status, _("Can't set permissions on '%s'"),
                              try_utf8_from_internal_style(fname_apr, pool));
  else
    return SVN_NO_ERROR;
}
