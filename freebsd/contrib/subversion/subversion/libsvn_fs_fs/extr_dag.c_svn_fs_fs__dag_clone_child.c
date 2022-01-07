
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_14__ {int kind; int created_path; int predecessor_count; int predecessor_id; int copyfrom_rev; int * copyfrom_path; int copyroot_path; int copyroot_rev; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_15__ {int * id; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int SVN_INVALID_REVNUM ;
 int apr_pstrdup (int *,int ) ;
 int get_node_revision (TYPE_1__**,TYPE_2__*) ;
 int set_entry (TYPE_2__*,char const*,int const*,int ,int const*,int *) ;
 int * svn_error_createf (int ,int *,char*,...) ;
 int svn_fs_fs__create_successor (int const**,int *,int *,TYPE_1__*,int const*,int const*,int *) ;
 scalar_t__ svn_fs_fs__dag_check_mutable (TYPE_2__*) ;
 int * svn_fs_fs__dag_get_fs (TYPE_2__*) ;
 int * svn_fs_fs__dag_get_node (TYPE_2__**,int *,int const*,int *) ;
 int svn_fs_fs__dag_open (TYPE_2__**,TYPE_2__*,char const*,int *,int *) ;
 int svn_fs_fs__id_copy (int *,int *) ;
 int svn_fspath__join (char const*,char const*,int *) ;
 int svn_path_is_single_path_component (char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_fs__dag_clone_child(dag_node_t **child_p,
                           dag_node_t *parent,
                           const char *parent_path,
                           const char *name,
                           const svn_fs_fs__id_part_t *copy_id,
                           const svn_fs_fs__id_part_t *txn_id,
                           svn_boolean_t is_parent_copyroot,
                           apr_pool_t *pool)
{
  dag_node_t *cur_entry;
  const svn_fs_id_t *new_node_id;
  svn_fs_t *fs = svn_fs_fs__dag_get_fs(parent);
  apr_pool_t *subpool = svn_pool_create(pool);


  if (! svn_fs_fs__dag_check_mutable(parent))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       "Attempted to clone child of non-mutable node");


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       "Attempted to make a child clone with an illegal name '%s'", name);


  SVN_ERR(svn_fs_fs__dag_open(&cur_entry, parent, name, pool, subpool));
  if (! cur_entry)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FOUND, ((void*)0),
       "Attempted to open non-existent child node '%s'", name);



  if (svn_fs_fs__dag_check_mutable(cur_entry))
    {

      new_node_id = cur_entry->id;
    }
  else
    {
      node_revision_t *noderev, *parent_noderev;


      SVN_ERR(get_node_revision(&noderev, cur_entry));

      if (is_parent_copyroot)
        {
          SVN_ERR(get_node_revision(&parent_noderev, parent));
          noderev->copyroot_rev = parent_noderev->copyroot_rev;
          noderev->copyroot_path = apr_pstrdup(pool,
                                               parent_noderev->copyroot_path);
        }

      noderev->copyfrom_path = ((void*)0);
      noderev->copyfrom_rev = SVN_INVALID_REVNUM;

      noderev->predecessor_id = svn_fs_fs__id_copy(cur_entry->id, pool);
      noderev->predecessor_count++;
      noderev->created_path = svn_fspath__join(parent_path, name, pool);

      SVN_ERR(svn_fs_fs__create_successor(&new_node_id, fs, cur_entry->id,
                                          noderev, copy_id, txn_id, pool));



      SVN_ERR(set_entry(parent, name, new_node_id, noderev->kind, txn_id,
                        pool));
    }


  svn_pool_destroy(subpool);
  return svn_fs_fs__dag_get_node(child_p, fs, new_node_id, pool);
}
