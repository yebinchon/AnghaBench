
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef int svn_wc_context_t ;
typedef int svn_wc_conflict_version_t ;
typedef int svn_wc_conflict_reason_t ;
struct TYPE_9__ {int reason; int action; } ;
typedef TYPE_3__ svn_wc_conflict_description2_t ;
typedef int svn_wc_conflict_action_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__add_tree_conflict (int *,TYPE_3__*,int *) ;
 TYPE_3__* svn_wc_conflict_description_create_tree2 (char const*,int ,int ,int const*,int const*,int *) ;
 int * svn_wc_conflict_version_create2 (char const*,char const*,char const*,int ,int ,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_tree_conflict ;
 int svn_wc_operation_merge ;

__attribute__((used)) static svn_error_t *
raise_tree_conflict(const char *local_abspath,
                    svn_wc_conflict_action_t incoming_change,
                    svn_wc_conflict_reason_t local_change,
                    svn_node_kind_t local_node_kind,
                    svn_node_kind_t merge_left_kind,
                    svn_node_kind_t merge_right_kind,
                    const char *repos_root_url,
                    const char *repos_uuid,
                    const char *repos_relpath,
                    svn_revnum_t merge_left_rev,
                    svn_revnum_t merge_right_rev,
                    svn_wc_context_t *wc_ctx,
                    svn_wc_notify_func2_t notify_func2,
                    void *notify_baton2,
                    apr_pool_t *scratch_pool)
{
  svn_wc_conflict_description2_t *conflict;
  const svn_wc_conflict_version_t *left_version;
  const svn_wc_conflict_version_t *right_version;

  left_version = svn_wc_conflict_version_create2(repos_root_url,
                                                 repos_uuid,
                                                 repos_relpath,
                                                 merge_left_rev,
                                                 merge_left_kind,
                                                 scratch_pool);
  right_version = svn_wc_conflict_version_create2(repos_root_url,
                                                  repos_uuid,
                                                  repos_relpath,
                                                  merge_right_rev,
                                                  merge_right_kind,
                                                  scratch_pool);
  conflict = svn_wc_conflict_description_create_tree2(local_abspath,
                                                      local_node_kind,
                                                      svn_wc_operation_merge,
                                                      left_version,
                                                      right_version,
                                                      scratch_pool);
  conflict->action = incoming_change;
  conflict->reason = local_change;

  SVN_ERR(svn_wc__add_tree_conflict(wc_ctx, conflict, scratch_pool));

  if (notify_func2)
    {
      svn_wc_notify_t *notify;

      notify = svn_wc_create_notify(local_abspath, svn_wc_notify_tree_conflict,
                                    scratch_pool);
      notify->kind = local_node_kind;
      notify_func2(notify_baton2, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
