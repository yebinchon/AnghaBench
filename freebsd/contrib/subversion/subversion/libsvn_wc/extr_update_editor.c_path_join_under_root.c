
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_OBSTRUCTED_UPDATE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_dirent_basename (char const*,int *) ;
 int svn_dirent_is_under_root (int *,char const**,char const*,char const*,int *) ;
 char const* svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,...) ;

__attribute__((used)) static svn_error_t *
path_join_under_root(const char **result_path,
                     const char *base_path,
                     const char *add_path,
                     apr_pool_t *pool)
{
  svn_boolean_t under_root;

  SVN_ERR(svn_dirent_is_under_root(&under_root,
                                   result_path, base_path, add_path, pool));

  if (! under_root)
    {
      return svn_error_createf(
          SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
          _("Path '%s' is not in the working copy"),
          svn_dirent_local_style(svn_dirent_join(base_path, add_path, pool),
                                 pool));
    }


  if (strcmp(add_path, svn_dirent_basename(*result_path, ((void*)0))) != 0)
    {
      return svn_error_createf(
          SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
          _("'%s' is not valid as filename in directory '%s'"),
          svn_dirent_local_style(add_path, pool),
          svn_dirent_local_style(base_path, pool));
    }

  return SVN_NO_ERROR;
}
