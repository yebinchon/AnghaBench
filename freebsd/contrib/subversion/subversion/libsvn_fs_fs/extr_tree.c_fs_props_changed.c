
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_GENERAL ;
 int _ (char*) ;
 int get_dag (int **,TYPE_1__*,char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_fs_fs__dag_things_different (int *,int *,int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
fs_props_changed(svn_boolean_t *changed_p,
                 svn_fs_root_t *root1,
                 const char *path1,
                 svn_fs_root_t *root2,
                 const char *path2,
                 svn_boolean_t strict,
                 apr_pool_t *pool)
{
  dag_node_t *node1, *node2;


  if (root1->fs != root2->fs)
    return svn_error_create
      (SVN_ERR_FS_GENERAL, ((void*)0),
       _("Cannot compare property value between two different filesystems"));

  SVN_ERR(get_dag(&node1, root1, path1, pool));
  SVN_ERR(get_dag(&node2, root2, path2, pool));
  return svn_fs_fs__dag_things_different(changed_p, ((void*)0),
                                         node1, node2, strict, pool);
}
