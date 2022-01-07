
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_wc_operation_t ;
struct TYPE_9__ {int node_kind; } ;
typedef TYPE_1__ svn_wc_conflict_version_t ;
typedef scalar_t__ svn_wc_conflict_reason_t ;
struct TYPE_10__ {scalar_t__ action; scalar_t__ reason; } ;
typedef TYPE_2__ svn_wc_conflict_description2_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_check_path (char const*,int *,int *) ;
 int svn_node_none ;
 int svn_wc__conflict_read_tree_conflict (scalar_t__*,scalar_t__*,int *,int *,char const*,int const*,int *,int *) ;
 scalar_t__ svn_wc_conflict_action_delete ;
 TYPE_2__* svn_wc_conflict_description_create_tree2 (char const*,int ,int ,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 scalar_t__ svn_wc_conflict_reason_deleted ;
 scalar_t__ svn_wc_conflict_reason_missing ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;
 scalar_t__ svn_wc_conflict_reason_obstructed ;
 scalar_t__ svn_wc_conflict_reason_unversioned ;
 int svn_wc_operation_switch ;
 int svn_wc_operation_update ;

__attribute__((used)) static svn_error_t *
read_tree_conflict_desc(svn_wc_conflict_description2_t **desc,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        svn_node_kind_t node_kind,
                        const svn_skel_t *conflict_skel,
                        svn_wc_operation_t operation,
                        const svn_wc_conflict_version_t *left_version,
                        const svn_wc_conflict_version_t *right_version,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_node_kind_t local_kind;
  svn_wc_conflict_reason_t reason;
  svn_wc_conflict_action_t action;

  SVN_ERR(svn_wc__conflict_read_tree_conflict(
            &reason, &action, ((void*)0),
            db, local_abspath, conflict_skel, scratch_pool, scratch_pool));

  if (reason == svn_wc_conflict_reason_missing)
    local_kind = svn_node_none;
  else if (reason == svn_wc_conflict_reason_unversioned ||
           reason == svn_wc_conflict_reason_obstructed)
    SVN_ERR(svn_io_check_path(local_abspath, &local_kind, scratch_pool));
  else if (action == svn_wc_conflict_action_delete
           && left_version
           && (operation == svn_wc_operation_update
               ||operation == svn_wc_operation_switch)
           && (reason == svn_wc_conflict_reason_deleted
               || reason == svn_wc_conflict_reason_moved_away))
    {

      local_kind = left_version->node_kind;
    }
  else
    local_kind = node_kind;

  *desc = svn_wc_conflict_description_create_tree2(local_abspath, local_kind,
                                                   operation,
                                                   left_version, right_version,
                                                   result_pool);
  (*desc)->reason = reason;
  (*desc)->action = action;

  return SVN_NO_ERROR;
}
