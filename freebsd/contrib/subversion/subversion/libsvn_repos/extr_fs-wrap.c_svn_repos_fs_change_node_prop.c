
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_fs_change_node_prop (int *,char const*,char const*,int const*,int *) ;
 int svn_repos__validate_prop (char const*,int const*,int *) ;
 int verify_mergeinfo (int const*,char const*,int *) ;

svn_error_t *
svn_repos_fs_change_node_prop(svn_fs_root_t *root,
                              const char *path,
                              const char *name,
                              const svn_string_t *value,
                              apr_pool_t *pool)
{
  if (value && strcmp(name, SVN_PROP_MERGEINFO) == 0)
    SVN_ERR(verify_mergeinfo(value, path, pool));


  SVN_ERR(svn_repos__validate_prop(name, value, pool));
  return svn_fs_change_node_prop(root, path, name, value, pool);
}
