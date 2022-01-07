
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_fileperms_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_perms_set (char const*,int ) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,char const*) ;

__attribute__((used)) static svn_error_t *
file_perms_set(const char *fname, apr_fileperms_t perms,
               apr_pool_t *pool)
{
  const char *fname_apr;
  apr_status_t status;

  SVN_ERR(cstring_from_utf8(&fname_apr, fname, pool));

  status = apr_file_perms_set(fname_apr, perms);
  if (status)
    return svn_error_wrap_apr(status, _("Can't set permissions on '%s'"),
                              fname);
  else
    return SVN_NO_ERROR;
}
