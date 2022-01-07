
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int APR_FILEPATH_TRUENAME ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_filepath_merge (char**,char*,char const*,int ,int *) ;
 char* svn_dirent_canonicalize (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_path_cstring_from_utf8 (char const**,char const*,int *) ;
 int svn_path_cstring_to_utf8 (char const**,char const*,int *) ;

svn_error_t *
svn_opt__arg_canonicalize_path(const char **path_out, const char *path_in,
                               apr_pool_t *pool)
{
  const char *apr_target;
  char *truenamed_target;
  apr_status_t apr_err;


  SVN_ERR(svn_path_cstring_from_utf8(&apr_target, path_in, pool));
  apr_err = apr_filepath_merge(&truenamed_target, "", apr_target,
                               APR_FILEPATH_TRUENAME, pool);

  if (!apr_err)

    apr_target = truenamed_target;
  else if (APR_STATUS_IS_ENOENT(apr_err))



    ;
  else
    return svn_error_createf(apr_err, ((void*)0),
                             _("Error resolving case of '%s'"),
                             svn_dirent_local_style(path_in, pool));


  SVN_ERR(svn_path_cstring_to_utf8(path_out, apr_target, pool));
  *path_out = svn_dirent_canonicalize(*path_out, pool);

  return SVN_NO_ERROR;
}
