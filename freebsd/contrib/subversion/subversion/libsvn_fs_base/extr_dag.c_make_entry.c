
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_13__ {int created_path; scalar_t__ kind; } ;
typedef TYPE_1__ node_revision_t ;
typedef int new_noderev ;
struct TYPE_14__ {scalar_t__ kind; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_ALREADY_EXISTS ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int _ (char*) ;
 int dir_entry_id_from_node (int const**,TYPE_2__*,char const*,int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int * set_entry (TYPE_2__*,char const*,int ,char const*,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,...) ;
 int svn_fs_base__create_node (int const**,int ,TYPE_1__*,int ,char const*,int *,int *) ;
 int svn_fs_base__dag_check_mutable (TYPE_2__*,char const*) ;
 int svn_fs_base__dag_get_fs (TYPE_2__*) ;
 int svn_fs_base__dag_get_id (TYPE_2__*) ;
 int svn_fs_base__dag_get_node (TYPE_2__**,int ,int const*,int *,int *) ;
 int svn_fs_base__id_copy_id (int ) ;
 int svn_fspath__join (char const*,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_path_is_single_path_component (char const*) ;

__attribute__((used)) static svn_error_t *
make_entry(dag_node_t **child_p,
           dag_node_t *parent,
           const char *parent_path,
           const char *name,
           svn_boolean_t is_dir,
           const char *txn_id,
           trail_t *trail,
           apr_pool_t *pool)
{
  const svn_fs_id_t *new_node_id;
  node_revision_t new_noderev;


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       _("Attempted to create a node with an illegal name '%s'"), name);


  if (parent->kind != svn_node_dir)
    return svn_error_create
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       _("Attempted to create entry in non-directory parent"));


  if (! svn_fs_base__dag_check_mutable(parent, txn_id))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to clone child of non-mutable node"));


  SVN_ERR(dir_entry_id_from_node(&new_node_id, parent, name, trail, pool));
  if (new_node_id)
    return svn_error_createf
      (SVN_ERR_FS_ALREADY_EXISTS, ((void*)0),
       _("Attempted to create entry that already exists"));


  memset(&new_noderev, 0, sizeof(new_noderev));
  new_noderev.kind = is_dir ? svn_node_dir : svn_node_file;
  new_noderev.created_path = svn_fspath__join(parent_path, name, pool);
  SVN_ERR(svn_fs_base__create_node
          (&new_node_id, svn_fs_base__dag_get_fs(parent), &new_noderev,
           svn_fs_base__id_copy_id(svn_fs_base__dag_get_id(parent)),
           txn_id, trail, pool));


  SVN_ERR(svn_fs_base__dag_get_node(child_p,
                                    svn_fs_base__dag_get_fs(parent),
                                    new_node_id, trail, pool));




  return set_entry(parent, name, svn_fs_base__dag_get_id(*child_p),
                   txn_id, trail, pool);
}
