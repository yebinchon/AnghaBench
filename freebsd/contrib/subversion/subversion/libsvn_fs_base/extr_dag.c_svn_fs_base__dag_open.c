
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int _ (char*) ;
 int dir_entry_id_from_node (int const**,int *,char const*,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_base__dag_get_fs (int *) ;
 int * svn_fs_base__dag_get_node (int **,int ,int const*,int *,int *) ;
 int svn_path_is_single_path_component (char const*) ;

svn_error_t *
svn_fs_base__dag_open(dag_node_t **child_p,
                      dag_node_t *parent,
                      const char *name,
                      trail_t *trail,
                      apr_pool_t *pool)
{
  const svn_fs_id_t *node_id;


  SVN_ERR(dir_entry_id_from_node(&node_id, parent, name, trail, pool));
  if (! node_id)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FOUND, ((void*)0),
       _("Attempted to open non-existent child node '%s'"), name);


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       _("Attempted to open node with an illegal name '%s'"), name);


  return svn_fs_base__dag_get_node(child_p, svn_fs_base__dag_get_fs(parent),
                                   node_id, trail, pool);
}
