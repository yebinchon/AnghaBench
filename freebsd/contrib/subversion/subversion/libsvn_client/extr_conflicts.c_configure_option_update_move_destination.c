
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc_operation_t ;
typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef int apr_array_header_t ;


 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_resolution_option (int *,int *,int ,int ,int ,int ) ;
 int resolve_update_moved_away_node ;
 scalar_t__ svn_client_conflict_get_incoming_change (int *) ;
 scalar_t__ svn_client_conflict_get_local_change (int *) ;
 scalar_t__ svn_client_conflict_get_operation (int *) ;
 int svn_client_conflict_option_update_move_destination ;
 scalar_t__ svn_wc_conflict_action_edit ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;
 scalar_t__ svn_wc_operation_switch ;
 scalar_t__ svn_wc_operation_update ;

__attribute__((used)) static svn_error_t *
configure_option_update_move_destination(svn_client_conflict_t *conflict,
                                         apr_array_header_t *options)
{
  svn_wc_operation_t operation;
  svn_wc_conflict_action_t incoming_change;
  svn_wc_conflict_reason_t local_change;

  operation = svn_client_conflict_get_operation(conflict);
  incoming_change = svn_client_conflict_get_incoming_change(conflict);
  local_change = svn_client_conflict_get_local_change(conflict);

  if ((operation == svn_wc_operation_update ||
       operation == svn_wc_operation_switch) &&
      incoming_change == svn_wc_conflict_action_edit &&
      local_change == svn_wc_conflict_reason_moved_away)
    {
      add_resolution_option(
        options, conflict,
        svn_client_conflict_option_update_move_destination,
        _("Update move destination"),
        _("apply incoming changes to move destination"),
        resolve_update_moved_away_node);
    }

  return SVN_NO_ERROR;
}
