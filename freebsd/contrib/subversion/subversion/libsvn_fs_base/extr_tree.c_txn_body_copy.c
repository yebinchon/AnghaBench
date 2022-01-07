
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_14__ ;


struct TYPE_23__ {int pool; TYPE_1__* fs; } ;
typedef TYPE_2__ trail_t ;
struct TYPE_24__ {char* txn; int txn_flags; int fs; int rev; int is_txn_root; } ;
typedef TYPE_3__ svn_fs_root_t ;
typedef int svn_fs_path_change_kind_t ;
typedef int svn_error_t ;
struct copy_args {char* from_path; char* to_path; int preserve_history; TYPE_3__* to_root; TYPE_3__* from_root; } ;
struct TYPE_25__ {TYPE_14__* parent; int entry; int * node; } ;
typedef TYPE_4__ parent_path_t ;
typedef int dag_node_t ;
struct TYPE_26__ {scalar_t__ format; } ;
typedef TYPE_5__ base_fs_data_t ;
typedef scalar_t__ apr_int64_t ;
struct TYPE_22__ {TYPE_5__* fsap_data; } ;
struct TYPE_21__ {int node; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 scalar_t__ SVN_FS_BASE__MIN_MERGEINFO_FORMAT ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int add_change (int ,char const*,char const*,int ,int ,int ,int ,TYPE_2__*,int ) ;
 int adjust_parent_mergeinfo_counts (TYPE_14__*,scalar_t__,char const*,TYPE_2__*,int ) ;
 int get_dag (int **,TYPE_3__*,char const*,TYPE_2__*,int ) ;
 int make_path_mutable (TYPE_3__*,TYPE_14__*,char const*,TYPE_2__*,int ) ;
 int open_path (TYPE_4__**,TYPE_3__*,char const*,int ,char const*,TYPE_2__*,int ) ;
 int open_path_last_optional ;
 int svn_fs_base__allow_locked_operation (char const*,int ,TYPE_2__*,int ) ;
 int svn_fs_base__dag_copy (int ,int ,int *,int ,int ,char const*,char const*,TYPE_2__*,int ) ;
 int svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__dag_get_mergeinfo_stats (int *,scalar_t__*,int *,TYPE_2__*,int ) ;
 scalar_t__ svn_fs_base__id_compare (int ,int ) ;
 scalar_t__ svn_fs_node_unchanged ;
 int svn_fs_path_change_add ;
 int svn_fs_path_change_replace ;

__attribute__((used)) static svn_error_t *
txn_body_copy(void *baton,
              trail_t *trail)
{
  struct copy_args *args = baton;
  svn_fs_root_t *from_root = args->from_root;
  const char *from_path = args->from_path;
  svn_fs_root_t *to_root = args->to_root;
  const char *to_path = args->to_path;
  dag_node_t *from_node;
  parent_path_t *to_parent_path;
  const char *txn_id = to_root->txn;


  SVN_ERR(get_dag(&from_node, from_root, from_path, trail, trail->pool));




  SVN_ERR(open_path(&to_parent_path, to_root, to_path,
                    open_path_last_optional, txn_id, trail, trail->pool));




  if (to_root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    {
      SVN_ERR(svn_fs_base__allow_locked_operation(to_path, TRUE,
                                                  trail, trail->pool));
    }





  if ((to_parent_path->node)
      && (svn_fs_base__id_compare(svn_fs_base__dag_get_id(from_node),
                                  svn_fs_base__dag_get_id
                                  (to_parent_path->node))
          == svn_fs_node_unchanged))
    return SVN_NO_ERROR;

  if (! from_root->is_txn_root)
    {
      svn_fs_path_change_kind_t kind;
      dag_node_t *new_node;
      apr_int64_t old_mergeinfo_count = 0, mergeinfo_count;
      base_fs_data_t *bfd = trail->fs->fsap_data;



      if (to_parent_path->node)
        kind = svn_fs_path_change_replace;
      else
        kind = svn_fs_path_change_add;


      SVN_ERR(make_path_mutable(to_root, to_parent_path->parent,
                                to_path, trail, trail->pool));



      if (to_parent_path->node)
        SVN_ERR(svn_fs_base__dag_get_mergeinfo_stats(((void*)0),
                                                     &old_mergeinfo_count,
                                                     to_parent_path->node,
                                                     trail, trail->pool));

      SVN_ERR(svn_fs_base__dag_copy(to_parent_path->parent->node,
                                    to_parent_path->entry,
                                    from_node,
                                    args->preserve_history,
                                    from_root->rev,
                                    from_path, txn_id, trail, trail->pool));



      if (bfd->format >= SVN_FS_BASE__MIN_MERGEINFO_FORMAT)
        {
          SVN_ERR(svn_fs_base__dag_get_mergeinfo_stats(((void*)0),
                                                       &mergeinfo_count,
                                                       from_node, trail,
                                                       trail->pool));
          SVN_ERR(adjust_parent_mergeinfo_counts
                  (to_parent_path->parent,
                   mergeinfo_count - old_mergeinfo_count,
                   txn_id, trail, trail->pool));
        }


      SVN_ERR(get_dag(&new_node, to_root, to_path, trail, trail->pool));
      SVN_ERR(add_change(to_root->fs, txn_id, to_path,
                         svn_fs_base__dag_get_id(new_node),
                         kind, FALSE, FALSE, trail, trail->pool));
    }
  else
    {
      SVN_ERR_MALFUNCTION();
    }

  return SVN_NO_ERROR;
}
