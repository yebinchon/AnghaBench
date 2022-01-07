
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_13__ {int predecessor_count; int created_path; int * predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_14__ {int * id; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int _ (char*) ;
 int set_entry (TYPE_2__*,char const*,int const*,char const*,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,...) ;
 int svn_fs_base__create_successor (int const**,int *,int *,TYPE_1__*,char const*,char const*,int *,int *) ;
 scalar_t__ svn_fs_base__dag_check_mutable (TYPE_2__*,char const*) ;
 int * svn_fs_base__dag_get_fs (TYPE_2__*) ;
 int * svn_fs_base__dag_get_node (TYPE_2__**,int *,int const*,int *,int *) ;
 int svn_fs_base__dag_open (TYPE_2__**,TYPE_2__*,char const*,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int *,int *,int *) ;
 int svn_fspath__join (char const*,char const*,int *) ;
 int svn_path_is_single_path_component (char const*) ;

svn_error_t *
svn_fs_base__dag_clone_child(dag_node_t **child_p,
                             dag_node_t *parent,
                             const char *parent_path,
                             const char *name,
                             const char *copy_id,
                             const char *txn_id,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  dag_node_t *cur_entry;
  const svn_fs_id_t *new_node_id;
  svn_fs_t *fs = svn_fs_base__dag_get_fs(parent);


  if (! svn_fs_base__dag_check_mutable(parent, txn_id))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to clone child of non-mutable node"));


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       _("Attempted to make a child clone with an illegal name '%s'"), name);


  SVN_ERR(svn_fs_base__dag_open(&cur_entry, parent, name, trail, pool));



  if (svn_fs_base__dag_check_mutable(cur_entry, txn_id))
    {

      new_node_id = cur_entry->id;
    }
  else
    {
      node_revision_t *noderev;


      SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, fs, cur_entry->id,
                                            trail, pool));


      noderev->predecessor_id = cur_entry->id;
      if (noderev->predecessor_count != -1)
        noderev->predecessor_count++;
      noderev->created_path = svn_fspath__join(parent_path, name, pool);
      SVN_ERR(svn_fs_base__create_successor(&new_node_id, fs, cur_entry->id,
                                            noderev, copy_id, txn_id,
                                            trail, pool));



      SVN_ERR(set_entry(parent, name, new_node_id, txn_id, trail, pool));
    }


  return svn_fs_base__dag_get_node(child_p, fs, new_node_id, trail, pool);
}
