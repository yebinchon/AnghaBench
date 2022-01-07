
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_finfo_t ;


 int APR_FINFO_LINK ;
 int APR_FINFO_MIN ;
 scalar_t__ APR_STATUS_IS_ENOENT (scalar_t__) ;
 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN__APR_STATUS_IS_ENOTDIR (scalar_t__) ;
 int _ (char*) ;
 scalar_t__ apr_stat (int *,char const*,int,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int map_apr_finfo_to_node_kind (int *,scalar_t__*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 int svn_node_none ;

__attribute__((used)) static svn_error_t *
io_check_path(const char *path,
              svn_boolean_t resolve_symlinks,
              svn_boolean_t *is_special_p,
              svn_node_kind_t *kind,
              apr_pool_t *pool)
{
  apr_int32_t flags;
  apr_finfo_t finfo;
  apr_status_t apr_err;
  const char *path_apr;
  svn_boolean_t is_special = FALSE;

  if (path[0] == '\0')
    path = ".";



  SVN_ERR(cstring_from_utf8(&path_apr, path, pool));

  flags = resolve_symlinks ? APR_FINFO_MIN : (APR_FINFO_MIN | APR_FINFO_LINK);
  apr_err = apr_stat(&finfo, path_apr, flags, pool);

  if (APR_STATUS_IS_ENOENT(apr_err))
    *kind = svn_node_none;
  else if (SVN__APR_STATUS_IS_ENOTDIR(apr_err))
    *kind = svn_node_none;
  else if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't check path '%s'"),
                              svn_dirent_local_style(path, pool));
  else
    map_apr_finfo_to_node_kind(kind, &is_special, &finfo);

  *is_special_p = is_special;

  return SVN_NO_ERROR;
}
