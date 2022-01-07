
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_20__ {int txn_flags; int rev; TYPE_3__* fs; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef scalar_t__ svn_fs_path_change_kind_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_21__ {TYPE_10__* parent; int entry; int * node; } ;
typedef TYPE_2__ parent_path_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
struct TYPE_22__ {int path; } ;
struct TYPE_19__ {int node; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int add_change (TYPE_3__*,int const*,char const*,int ,scalar_t__,int ,int ,int ,int ,int ,char const*,int *) ;
 int dag_node_cache_invalidate (TYPE_1__*,int ,int *) ;
 int fs_same_p (int *,TYPE_3__*,TYPE_3__*,int *) ;
 int get_dag (int **,TYPE_1__*,char const*,int *) ;
 int increment_mergeinfo_up_tree (TYPE_10__*,scalar_t__,int *) ;
 int make_path_mutable (TYPE_1__*,TYPE_10__*,char const*,int *) ;
 int open_path (TYPE_2__**,TYPE_1__*,char const*,int ,int ,int *) ;
 int open_path_last_optional ;
 int parent_path_path (TYPE_2__*,int *) ;
 int * root_txn_id (TYPE_1__*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs_fs__allow_locked_operation (char const*,TYPE_3__*,int ,int ,int *) ;
 int svn_fs_fs__dag_copy (int ,int ,int *,int ,int ,char const*,int const*,int *) ;
 int svn_fs_fs__dag_get_id (int *) ;
 int svn_fs_fs__dag_get_mergeinfo_count (scalar_t__*,int *) ;
 int svn_fs_fs__dag_node_kind (int *) ;
 scalar_t__ svn_fs_fs__fs_supports_mergeinfo (TYPE_3__*) ;
 scalar_t__ svn_fs_fs__id_eq (int ,int ) ;
 scalar_t__ svn_fs_path_change_add ;
 scalar_t__ svn_fs_path_change_replace ;

__attribute__((used)) static svn_error_t *
copy_helper(svn_fs_root_t *from_root,
            const char *from_path,
            svn_fs_root_t *to_root,
            const char *to_path,
            svn_boolean_t preserve_history,
            apr_pool_t *pool)
{
  dag_node_t *from_node;
  parent_path_t *to_parent_path;
  const svn_fs_fs__id_part_t *txn_id = root_txn_id(to_root);
  svn_boolean_t same_p;



  SVN_ERR(fs_same_p(&same_p, from_root->fs, to_root->fs, pool));
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


  SVN_ERR(get_dag(&from_node, from_root, from_path, pool));




  SVN_ERR(open_path(&to_parent_path, to_root, to_path,
                    open_path_last_optional, TRUE, pool));



  if (to_root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_fs__allow_locked_operation(to_path, to_root->fs,
                                              TRUE, FALSE, pool));





  if (to_parent_path->node &&
      svn_fs_fs__id_eq(svn_fs_fs__dag_get_id(from_node),
                       svn_fs_fs__dag_get_id(to_parent_path->node)))
    return SVN_NO_ERROR;

  if (! from_root->is_txn_root)
    {
      svn_fs_path_change_kind_t kind;
      dag_node_t *new_node;
      const char *from_canonpath;
      apr_int64_t mergeinfo_start;
      apr_int64_t mergeinfo_end;



      if (to_parent_path->node)
        {
          kind = svn_fs_path_change_replace;
          if (svn_fs_fs__fs_supports_mergeinfo(to_root->fs))
            SVN_ERR(svn_fs_fs__dag_get_mergeinfo_count(&mergeinfo_start,
                                                       to_parent_path->node));
        }
      else
        {
          kind = svn_fs_path_change_add;
          mergeinfo_start = 0;
        }

      if (svn_fs_fs__fs_supports_mergeinfo(to_root->fs))
        SVN_ERR(svn_fs_fs__dag_get_mergeinfo_count(&mergeinfo_end,
                                                   from_node));


      SVN_ERR(make_path_mutable(to_root, to_parent_path->parent,
                                to_path, pool));


      from_canonpath = svn_fs__canonicalize_abspath(from_path, pool);

      SVN_ERR(svn_fs_fs__dag_copy(to_parent_path->parent->node,
                                  to_parent_path->entry,
                                  from_node,
                                  preserve_history,
                                  from_root->rev,
                                  from_canonpath,
                                  txn_id, pool));

      if (kind != svn_fs_path_change_add)
        SVN_ERR(dag_node_cache_invalidate(to_root,
                                          parent_path_path(to_parent_path,
                                                           pool), pool));

      if (svn_fs_fs__fs_supports_mergeinfo(to_root->fs)
          && mergeinfo_start != mergeinfo_end)
        SVN_ERR(increment_mergeinfo_up_tree(to_parent_path->parent,
                                            mergeinfo_end - mergeinfo_start,
                                            pool));


      SVN_ERR(get_dag(&new_node, to_root, to_path, pool));
      SVN_ERR(add_change(to_root->fs, txn_id, to_path,
                         svn_fs_fs__dag_get_id(new_node), kind, FALSE,
                         FALSE, FALSE, svn_fs_fs__dag_node_kind(from_node),
                         from_root->rev, from_canonpath, pool));
    }
  else
    {
      SVN_ERR_MALFUNCTION();
    }

  return SVN_NO_ERROR;
}
