
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int base_node_proplist (int **,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
base_node_has_props(svn_boolean_t *has_props,
                    svn_fs_root_t *root,
                    const char *path,
                    apr_pool_t *scratch_pool)
{
  apr_hash_t *props;

  SVN_ERR(base_node_proplist(&props, root, path, scratch_pool));

  *has_props = (0 < apr_hash_count(props));

  return SVN_NO_ERROR;
}
