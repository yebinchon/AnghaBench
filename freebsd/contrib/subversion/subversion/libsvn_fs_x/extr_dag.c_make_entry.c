
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_11__ {scalar_t__ kind; int noderev_id; int copy_id; int predecessor_id; int * copyfrom_path; int copyfrom_rev; int copyroot_rev; int copyroot_path; int created_path; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int new_noderev ;
struct TYPE_12__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int SVN_INVALID_REVNUM ;
 int _ (char*) ;
 int apr_pstrdup (int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int * set_entry (TYPE_2__*,char const*,int *,scalar_t__,int ,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,...) ;
 int svn_fs_x__create_node (int ,TYPE_1__*,int *,int ,int *) ;
 int svn_fs_x__dag_check_mutable (TYPE_2__*) ;
 int svn_fs_x__dag_get_fs (TYPE_2__*) ;
 int svn_fs_x__dag_get_node (TYPE_2__**,int ,int *,int *,int *) ;
 int svn_fs_x__id_reset (int *) ;
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
           svn_fs_x__txn_id_t txn_id,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t new_noderev;
  svn_fs_x__noderev_t *parent_noderev = parent->node_revision;


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       _("Attempted to create a node with an illegal name '%s'"), name);


  if (parent_noderev->kind != svn_node_dir)
    return svn_error_create
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       _("Attempted to create entry in non-directory parent"));


  if (! svn_fs_x__dag_check_mutable(parent))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to clone child of non-mutable node"));


  memset(&new_noderev, 0, sizeof(new_noderev));
  new_noderev.kind = is_dir ? svn_node_dir : svn_node_file;
  new_noderev.created_path = svn_fspath__join(parent_path, name, result_pool);

  new_noderev.copyroot_path = apr_pstrdup(result_pool,
                                          parent_noderev->copyroot_path);
  new_noderev.copyroot_rev = parent_noderev->copyroot_rev;
  new_noderev.copyfrom_rev = SVN_INVALID_REVNUM;
  new_noderev.copyfrom_path = ((void*)0);
  svn_fs_x__id_reset(&new_noderev.predecessor_id);

  SVN_ERR(svn_fs_x__create_node
          (svn_fs_x__dag_get_fs(parent), &new_noderev,
           &parent_noderev->copy_id, txn_id, scratch_pool));


  SVN_ERR(svn_fs_x__dag_get_node(child_p, svn_fs_x__dag_get_fs(parent),
                                 &new_noderev.noderev_id, result_pool,
                                 scratch_pool));




  return set_entry(parent, name, &new_noderev.noderev_id,
                   new_noderev.kind, txn_id, scratch_pool);
}
