
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int get_dag (int **,int *,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs_fs__dag_has_props (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
fs_node_has_props(svn_boolean_t *has_props,
                  svn_fs_root_t *root,
                  const char *path,
                  apr_pool_t *scratch_pool)
{
  dag_node_t *node;

  SVN_ERR(get_dag(&node, root, path, scratch_pool));

  return svn_error_trace(svn_fs_fs__dag_has_props(has_props, node,
                                                  scratch_pool));
}
