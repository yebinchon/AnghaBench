
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_18__ {TYPE_7__* parent; int entry; int * node; } ;
typedef TYPE_1__ svn_fs_x__dag_path_t ;
struct TYPE_19__ {int txn_flags; int rev; TYPE_3__* fs; scalar_t__ is_txn_root; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef scalar_t__ svn_fs_path_change_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
struct TYPE_21__ {int node; } ;
struct TYPE_20__ {int path; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int add_change (TYPE_3__*,int ,char const*,scalar_t__,int ,int ,int ,int ,int ,char const*,int *) ;
 int increment_mergeinfo_up_tree (TYPE_7__*,scalar_t__,int *) ;
 int parent_path_path (TYPE_1__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 scalar_t__ svn_fs_path_change_add ;
 scalar_t__ svn_fs_path_change_replace ;
 int svn_fs_x__allow_locked_operation (char const*,TYPE_3__*,int ,int ,int *) ;
 int svn_fs_x__dag_copy (int ,int ,int *,int ,int ,char const*,int ,int *) ;
 int svn_fs_x__dag_get_id (int *) ;
 scalar_t__ svn_fs_x__dag_get_mergeinfo_count (int *) ;
 int svn_fs_x__dag_node_kind (int *) ;
 int svn_fs_x__dag_path_last_optional ;
 int svn_fs_x__get_dag_node (int **,TYPE_2__*,char const*,int *,int *) ;
 int svn_fs_x__get_dag_path (TYPE_1__**,TYPE_2__*,char const*,int ,int ,int *,int *) ;
 scalar_t__ svn_fs_x__id_eq (int ,int ) ;
 int svn_fs_x__invalidate_dag_cache (TYPE_2__*,int ) ;
 int svn_fs_x__make_path_mutable (TYPE_2__*,TYPE_7__*,char const*,int *,int *) ;
 int svn_fs_x__root_txn_id (TYPE_2__*) ;
 int x_same_p (int *,TYPE_3__*,TYPE_3__*,int *) ;

__attribute__((used)) static svn_error_t *
copy_helper(svn_fs_root_t *from_root,
            const char *from_path,
            svn_fs_root_t *to_root,
            const char *to_path,
            svn_boolean_t preserve_history,
            apr_pool_t *scratch_pool)
{
  dag_node_t *from_node;
  svn_fs_x__dag_path_t *to_dag_path;
  svn_fs_x__txn_id_t txn_id = svn_fs_x__root_txn_id(to_root);
  svn_boolean_t same_p;



  SVN_ERR(x_same_p(&same_p, from_root->fs, to_root->fs, scratch_pool));
  if (! same_p)
    return svn_error_createf
      (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
       _("Cannot copy between two different filesystems ('%s' and '%s')"),
       from_root->fs->path, to_root->fs->path);


  if (from_root->is_txn_root)
    return svn_error_create
      (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
       _("Copy from mutable tree not currently supported"));

  if (! to_root->is_txn_root)
    return svn_error_create
      (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
       _("Copy immutable tree not supported"));


  SVN_ERR(svn_fs_x__get_dag_node(&from_node, from_root, from_path,
                                 scratch_pool, scratch_pool));




  SVN_ERR(svn_fs_x__get_dag_path(&to_dag_path, to_root, to_path,
                                 svn_fs_x__dag_path_last_optional, TRUE,
                                 scratch_pool, scratch_pool));



  if (to_root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_x__allow_locked_operation(to_path, to_root->fs,
                                             TRUE, FALSE, scratch_pool));





  if (to_dag_path->node &&
      svn_fs_x__id_eq(svn_fs_x__dag_get_id(from_node),
                      svn_fs_x__dag_get_id(to_dag_path->node)))
    return SVN_NO_ERROR;

  if (! from_root->is_txn_root)
    {
      svn_fs_path_change_kind_t kind;
      dag_node_t *new_node;
      const char *from_canonpath;
      apr_int64_t mergeinfo_start;
      apr_int64_t mergeinfo_end;



      if (to_dag_path->node)
        {
          kind = svn_fs_path_change_replace;
          mergeinfo_start
            = svn_fs_x__dag_get_mergeinfo_count(to_dag_path->node);
        }
      else
        {
          kind = svn_fs_path_change_add;
          mergeinfo_start = 0;
        }

      mergeinfo_end = svn_fs_x__dag_get_mergeinfo_count(from_node);


      SVN_ERR(svn_fs_x__make_path_mutable(to_root, to_dag_path->parent,
                                          to_path, scratch_pool,
                                          scratch_pool));


      from_canonpath = svn_fs__canonicalize_abspath(from_path, scratch_pool);

      SVN_ERR(svn_fs_x__dag_copy(to_dag_path->parent->node,
                                 to_dag_path->entry,
                                 from_node,
                                 preserve_history,
                                 from_root->rev,
                                 from_canonpath,
                                 txn_id, scratch_pool));

      if (kind != svn_fs_path_change_add)
        svn_fs_x__invalidate_dag_cache(to_root,
                                       parent_path_path(to_dag_path,
                                                        scratch_pool));

      if (mergeinfo_start != mergeinfo_end)
        SVN_ERR(increment_mergeinfo_up_tree(to_dag_path->parent,
                                            mergeinfo_end - mergeinfo_start,
                                            scratch_pool));


      SVN_ERR(svn_fs_x__get_dag_node(&new_node, to_root, to_path,
                                     scratch_pool, scratch_pool));
      SVN_ERR(add_change(to_root->fs, txn_id, to_path, kind, FALSE,
                         FALSE, FALSE, svn_fs_x__dag_node_kind(from_node),
                         from_root->rev, from_canonpath, scratch_pool));
    }
  else
    {
      SVN_ERR_MALFUNCTION();
    }

  return SVN_NO_ERROR;
}
