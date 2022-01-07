
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_node_kind_t ;
struct TYPE_13__ {int txn_flags; int fs; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int node; TYPE_8__* parent; int entry; } ;
typedef TYPE_2__ parent_path_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
struct TYPE_15__ {int node; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_ROOT_DIR ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_FS__NOT_TXN (TYPE_1__*) ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int _ (char*) ;
 int * add_change (int ,int const*,char const*,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int dag_node_cache_invalidate (TYPE_1__*,int ,int *) ;
 int increment_mergeinfo_up_tree (TYPE_8__*,int ,int *) ;
 int make_path_mutable (TYPE_1__*,TYPE_8__*,char const*,int *) ;
 int open_path (TYPE_2__**,TYPE_1__*,char const*,int ,int ,int *) ;
 int parent_path_path (TYPE_2__*,int *) ;
 int * root_txn_id (TYPE_1__*) ;
 int * svn_error_create (int ,int *,int ) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs_fs__allow_locked_operation (char const*,int ,int ,int ,int *) ;
 int svn_fs_fs__dag_delete (int ,int ,int const*,int *) ;
 int svn_fs_fs__dag_get_id (int ) ;
 int svn_fs_fs__dag_get_mergeinfo_count (int *,int ) ;
 int svn_fs_fs__dag_node_kind (int ) ;
 scalar_t__ svn_fs_fs__fs_supports_mergeinfo (int ) ;
 int svn_fs_path_change_delete ;

__attribute__((used)) static svn_error_t *
fs_delete_node(svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  parent_path_t *parent_path;
  const svn_fs_fs__id_part_t *txn_id;
  apr_int64_t mergeinfo_count = 0;
  svn_node_kind_t kind;

  if (! root->is_txn_root)
    return SVN_FS__NOT_TXN(root);

  txn_id = root_txn_id(root);
  path = svn_fs__canonicalize_abspath(path, pool);
  SVN_ERR(open_path(&parent_path, root, path, 0, TRUE, pool));
  kind = svn_fs_fs__dag_node_kind(parent_path->node);


  if (! parent_path->parent)
    return svn_error_create(SVN_ERR_FS_ROOT_DIR, ((void*)0),
                            _("The root directory cannot be deleted"));



  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_fs__allow_locked_operation(path, root->fs, TRUE, FALSE,
                                              pool));


  SVN_ERR(make_path_mutable(root, parent_path->parent, path, pool));
  if (svn_fs_fs__fs_supports_mergeinfo(root->fs))
    SVN_ERR(svn_fs_fs__dag_get_mergeinfo_count(&mergeinfo_count,
                                               parent_path->node));
  SVN_ERR(svn_fs_fs__dag_delete(parent_path->parent->node,
                                parent_path->entry,
                                txn_id, pool));


  SVN_ERR(dag_node_cache_invalidate(root, parent_path_path(parent_path, pool),
                                    pool));


  if (mergeinfo_count > 0)
    SVN_ERR(increment_mergeinfo_up_tree(parent_path->parent,
                                        -mergeinfo_count,
                                        pool));


  return add_change(root->fs, txn_id, path,
                    svn_fs_fs__dag_get_id(parent_path->node),
                    svn_fs_path_change_delete, FALSE, FALSE, FALSE, kind,
                    SVN_INVALID_REVNUM, ((void*)0), pool);
}
