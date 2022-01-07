
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_dag (int **,int *,char const*,int *) ;
 int svn_fs_fs__dag_get_copyfrom_path (char const**,int *) ;
 int svn_fs_fs__dag_get_copyfrom_rev (int *,int *) ;

__attribute__((used)) static svn_error_t *
fs_copied_from(svn_revnum_t *rev_p,
               const char **path_p,
               svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  dag_node_t *node;



  SVN_ERR(get_dag(&node, root, path, pool));
  SVN_ERR(svn_fs_fs__dag_get_copyfrom_rev(rev_p, node));
  SVN_ERR(svn_fs_fs__dag_get_copyfrom_path(path_p, node));

  return SVN_NO_ERROR;
}
