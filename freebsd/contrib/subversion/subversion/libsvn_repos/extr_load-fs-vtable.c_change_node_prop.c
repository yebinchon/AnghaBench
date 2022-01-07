
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_fs_change_node_prop (int *,char const*,char const*,int const*,int *) ;
 int * svn_repos_fs_change_node_prop (int *,char const*,char const*,int const*,int *) ;

__attribute__((used)) static svn_error_t *
change_node_prop(svn_fs_root_t *txn_root,
                 const char *path,
                 const char *name,
                 const svn_string_t *value,
                 svn_boolean_t validate_props,
                 apr_pool_t *pool)
{
  if (validate_props)
    return svn_repos_fs_change_node_prop(txn_root, path, name, value, pool);
  else
    return svn_fs_change_node_prop(txn_root, path, name, value, pool);
}
