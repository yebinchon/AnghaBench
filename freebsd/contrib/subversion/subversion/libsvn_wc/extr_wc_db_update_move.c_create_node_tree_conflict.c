
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int operation; int new_version; TYPE_3__* old_version; int db; int dst_op_depth; int wcroot; } ;
typedef TYPE_1__ update_move_baton_t ;
typedef int svn_wc_conflict_reason_t ;
typedef int svn_wc_conflict_action_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_6__ {char const* dst_relpath; TYPE_1__* umb; } ;
typedef TYPE_2__ node_move_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int path_in_repos; } ;


 int create_tree_conflict (int **,int ,char const*,char*,int ,TYPE_3__*,int ,int ,int ,int ,char const*,int ,int ,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;
 char* svn_relpath_join (int ,int ,int *) ;
 char* svn_relpath_prefix (char const*,int ,int *) ;
 int svn_relpath_skip_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_error_t *
create_node_tree_conflict(svn_skel_t **conflict_p,
                          node_move_baton_t *nmb,
                          const char *dst_local_relpath,
                          svn_node_kind_t old_kind,
                          svn_node_kind_t new_kind,
                          svn_wc_conflict_reason_t reason,
                          svn_wc_conflict_action_t action,
                          const char *move_src_op_root_relpath,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  update_move_baton_t *umb = nmb->umb;
  const char *dst_repos_relpath;
  const char *dst_root_relpath = svn_relpath_prefix(nmb->dst_relpath,
                                                    umb->dst_op_depth,
                                                    scratch_pool);

  dst_repos_relpath =
            svn_relpath_join(nmb->umb->old_version->path_in_repos,
                             svn_relpath_skip_ancestor(dst_root_relpath,
                                                       nmb->dst_relpath),
                             scratch_pool);

  return svn_error_trace(
            create_tree_conflict(conflict_p, umb->wcroot, dst_local_relpath,
                                 svn_relpath_prefix(dst_local_relpath,
                                                    umb->dst_op_depth,
                                                    scratch_pool),
                                 umb->db,
                                 umb->old_version, umb->new_version,
                                 umb->operation, old_kind, new_kind,
                                 dst_repos_relpath,
                                 reason, action, move_src_op_root_relpath,
                                 result_pool, scratch_pool));
}
