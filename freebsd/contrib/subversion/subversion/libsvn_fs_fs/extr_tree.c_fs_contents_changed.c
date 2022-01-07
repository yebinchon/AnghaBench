
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
 int SVN_ERR_FS_NOT_FILE ;
 int _ (char*) ;
 int get_dag (int **,TYPE_1__*,char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_fs_fs__dag_node_kind (int *) ;
 int * svn_fs_fs__dag_things_different (int *,int *,int *,int *,int ,int *) ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static svn_error_t *
fs_contents_changed(svn_boolean_t *changed_p,
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
       _("Cannot compare file contents between two different filesystems"));

  SVN_ERR(get_dag(&node1, root1, path1, pool));

  if (svn_fs_fs__dag_node_kind(node1) != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0), _("'%s' is not a file"), path1);

  SVN_ERR(get_dag(&node2, root2, path2, pool));

  if (svn_fs_fs__dag_node_kind(node2) != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0), _("'%s' is not a file"), path2);

  return svn_fs_fs__dag_things_different(((void*)0), changed_p,
                                         node1, node2, strict, pool);
}
