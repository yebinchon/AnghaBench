
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
struct TYPE_7__ {int id; } ;
typedef TYPE_1__ svn_fs_dirent_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_8__ {scalar_t__ kind; int * fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int SVN_ERR_FS_NO_SUCH_ENTRY ;
 int get_node_revision (int **,TYPE_2__*) ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 int svn_fs_fs__dag_check_mutable (TYPE_2__*) ;
 int svn_fs_fs__dag_delete_if_mutable (int *,int *,int *) ;
 int * svn_fs_fs__id_copy (int ,int *) ;
 int svn_fs_fs__rep_contents_dir_entry (TYPE_1__**,int *,int *,char const*,int *,int *) ;
 int * svn_fs_fs__set_entry (int *,int const*,int *,char const*,int *,int ,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_node_unknown ;
 int svn_path_is_single_path_component (char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_fs__dag_delete(dag_node_t *parent,
                      const char *name,
                      const svn_fs_fs__id_part_t *txn_id,
                      apr_pool_t *pool)
{
  node_revision_t *parent_noderev;
  svn_fs_t *fs = parent->fs;
  svn_fs_dirent_t *dirent;
  svn_fs_id_t *id;
  apr_pool_t *subpool;


  if (parent->kind != svn_node_dir)
    return svn_error_createf
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       "Attempted to delete entry '%s' from *non*-directory node", name);


  if (! svn_fs_fs__dag_check_mutable(parent))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       "Attempted to delete entry '%s' from immutable directory node", name);


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       "Attempted to delete a node with an illegal name '%s'", name);


  SVN_ERR(get_node_revision(&parent_noderev, parent));

  subpool = svn_pool_create(pool);


  SVN_ERR(svn_fs_fs__rep_contents_dir_entry(&dirent, fs, parent_noderev,
                                            name, subpool, subpool));




  if (! dirent)
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_ENTRY, ((void*)0),
       "Delete failed--directory has no entry '%s'", name);



  id = svn_fs_fs__id_copy(dirent->id, pool);
  svn_pool_destroy(subpool);


  SVN_ERR(svn_fs_fs__dag_delete_if_mutable(parent->fs, id, pool));


  return svn_fs_fs__set_entry(parent->fs, txn_id, parent_noderev, name,
                              ((void*)0), svn_node_unknown, pool);
}
