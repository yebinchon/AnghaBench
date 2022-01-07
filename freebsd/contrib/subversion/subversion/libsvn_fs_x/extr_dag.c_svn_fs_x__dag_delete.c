
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_9__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
struct TYPE_10__ {int id; } ;
typedef TYPE_2__ svn_fs_x__dirent_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int * fs; int hint; TYPE_1__* node_revision; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int SVN_ERR_FS_NO_SUCH_ENTRY ;
 int * SVN_NO_ERROR ;
 int delete_if_mutable (int *,int *,int *) ;
 int set_entry (TYPE_3__*,char const*,int *,int ,int ,int *) ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 int svn_fs_x__dag_check_mutable (TYPE_3__*) ;
 int svn_fs_x__rep_contents_dir_entry (TYPE_2__**,int *,TYPE_1__*,char const*,int *,int *,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_node_unknown ;
 int svn_path_is_single_path_component (char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_x__dag_delete(dag_node_t *parent,
                     const char *name,
                     svn_fs_x__txn_id_t txn_id,
                     apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *parent_noderev = parent->node_revision;
  svn_fs_t *fs = parent->fs;
  svn_fs_x__dirent_t *dirent;
  apr_pool_t *subpool;


  if (parent_noderev->kind != svn_node_dir)
    return svn_error_createf
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       "Attempted to delete entry '%s' from *non*-directory node", name);


  if (! svn_fs_x__dag_check_mutable(parent))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       "Attempted to delete entry '%s' from immutable directory node", name);


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       "Attempted to delete a node with an illegal name '%s'", name);




  subpool = svn_pool_create(scratch_pool);


  SVN_ERR(svn_fs_x__rep_contents_dir_entry(&dirent, fs, parent_noderev,
                                           name, &parent->hint,
                                           subpool, subpool));




  if (! dirent)
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_ENTRY, ((void*)0),
       "Delete failed--directory has no entry '%s'", name);


  SVN_ERR(delete_if_mutable(parent->fs, &dirent->id, subpool));


  SVN_ERR(set_entry(parent, name, ((void*)0), svn_node_unknown, txn_id, subpool));

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
