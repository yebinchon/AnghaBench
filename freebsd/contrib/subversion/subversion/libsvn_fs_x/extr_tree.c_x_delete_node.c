
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_13__ {TYPE_6__* parent; int entry; int node; } ;
typedef TYPE_1__ svn_fs_x__dag_path_t ;
struct TYPE_14__ {int txn_flags; int fs; int is_txn_root; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
struct TYPE_15__ {int node; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_ROOT_DIR ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_FS__NOT_TXN (TYPE_2__*) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int add_change (int ,int ,char const*,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int increment_mergeinfo_up_tree (TYPE_6__*,int ,int *) ;
 int parent_path_path (TYPE_1__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_path_change_delete ;
 int svn_fs_x__allow_locked_operation (char const*,int ,int ,int ,int *) ;
 int svn_fs_x__dag_delete (int ,int ,int ,int *) ;
 int svn_fs_x__dag_get_mergeinfo_count (int ) ;
 int svn_fs_x__dag_node_kind (int ) ;
 int svn_fs_x__get_dag_path (TYPE_1__**,TYPE_2__*,char const*,int ,int ,int *,int *) ;
 int svn_fs_x__invalidate_dag_cache (TYPE_2__*,int ) ;
 int svn_fs_x__make_path_mutable (TYPE_2__*,TYPE_6__*,char const*,int *,int *) ;
 int svn_fs_x__root_txn_id (TYPE_2__*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_delete_node(svn_fs_root_t *root,
              const char *path,
              apr_pool_t *scratch_pool)
{
  svn_fs_x__dag_path_t *dag_path;
  svn_fs_x__txn_id_t txn_id;
  apr_int64_t mergeinfo_count = 0;
  svn_node_kind_t kind;
  apr_pool_t *subpool = svn_pool_create(scratch_pool);

  if (! root->is_txn_root)
    return SVN_FS__NOT_TXN(root);

  txn_id = svn_fs_x__root_txn_id(root);
  SVN_ERR(svn_fs_x__get_dag_path(&dag_path, root, path, 0, TRUE, subpool,
                                 subpool));
  kind = svn_fs_x__dag_node_kind(dag_path->node);


  if (! dag_path->parent)
    return svn_error_create(SVN_ERR_FS_ROOT_DIR, ((void*)0),
                            _("The root directory cannot be deleted"));



  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_x__allow_locked_operation(path, root->fs, TRUE, FALSE,
                                             subpool));


  SVN_ERR(svn_fs_x__make_path_mutable(root, dag_path->parent, path, subpool,
                                      subpool));
  mergeinfo_count = svn_fs_x__dag_get_mergeinfo_count(dag_path->node);
  SVN_ERR(svn_fs_x__dag_delete(dag_path->parent->node,
                               dag_path->entry,
                               txn_id, subpool));


  svn_fs_x__invalidate_dag_cache(root, parent_path_path(dag_path, subpool));


  if (mergeinfo_count > 0)
    SVN_ERR(increment_mergeinfo_up_tree(dag_path->parent,
                                        -mergeinfo_count,
                                        subpool));


  SVN_ERR(add_change(root->fs, txn_id, path,
                     svn_fs_path_change_delete, FALSE, FALSE, FALSE, kind,
                     SVN_INVALID_REVNUM, ((void*)0), subpool));

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
