
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* svn_dirent_internal_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_path_is_url (char const*) ;

__attribute__((used)) static svn_error_t *
target_arg_to_dirent(const char **dirent,
                     const char *path,
                     apr_pool_t *pool)
{
  if (svn_path_is_url(path))
    return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                             _("Path '%s' is not a local path"), path);
  *dirent = svn_dirent_internal_style(path, pool);
  return SVN_NO_ERROR;
}
