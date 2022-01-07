
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__dag_get_proplist (int **,int *,int *,int *) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;
 int svn_hash_gets (int *,char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_string_dup (int ,int *) ;

__attribute__((used)) static svn_error_t *
x_node_prop(svn_string_t **value_p,
            svn_fs_root_t *root,
            const char *path,
            const char *propname,
            apr_pool_t *pool)
{
  dag_node_t *node;
  apr_hash_t *proplist;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  SVN_ERR(svn_fs_x__get_temp_dag_node(&node, root, path, scratch_pool));
  SVN_ERR(svn_fs_x__dag_get_proplist(&proplist, node, scratch_pool,
                                     scratch_pool));
  *value_p = ((void*)0);
  if (proplist)
    *value_p = svn_string_dup(svn_hash_gets(proplist, propname), pool);

  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
