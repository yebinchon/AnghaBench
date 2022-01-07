
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int tree_conflict_get_local_details_func; int tree_conflict_get_local_description_func; int tree_conflict_get_incoming_details_func; int tree_conflict_get_incoming_description_func; } ;
typedef TYPE_1__ svn_client_conflict_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int conflict_tree_get_description_incoming_add ;
 int conflict_tree_get_description_incoming_delete ;
 int conflict_tree_get_description_incoming_edit ;
 int conflict_tree_get_description_local_missing ;
 int conflict_tree_get_details_incoming_add ;
 int conflict_tree_get_details_incoming_delete ;
 int conflict_tree_get_details_incoming_edit ;
 int conflict_tree_get_details_local_missing ;
 int conflict_tree_get_incoming_description_generic ;
 int conflict_tree_get_local_description_generic ;
 int svn_client_conflict_get_conflicted (int *,int *,int *,TYPE_1__*,int *,int *) ;
 scalar_t__ svn_client_conflict_get_incoming_change (TYPE_1__*) ;
 scalar_t__ svn_client_conflict_get_local_change (TYPE_1__*) ;
 scalar_t__ svn_wc_conflict_action_add ;
 scalar_t__ svn_wc_conflict_action_delete ;
 scalar_t__ svn_wc_conflict_action_edit ;
 scalar_t__ svn_wc_conflict_action_replace ;
 scalar_t__ svn_wc_conflict_reason_missing ;

__attribute__((used)) static svn_error_t *
conflict_type_specific_setup(svn_client_conflict_t *conflict,
                             apr_pool_t *scratch_pool)
{
  svn_boolean_t tree_conflicted;
  svn_wc_conflict_action_t incoming_change;
  svn_wc_conflict_reason_t local_change;


  SVN_ERR(svn_client_conflict_get_conflicted(((void*)0), ((void*)0), &tree_conflicted,
                                             conflict, scratch_pool,
                                             scratch_pool));
  if (!tree_conflicted)
    return SVN_NO_ERROR;


  conflict->tree_conflict_get_incoming_description_func =
    conflict_tree_get_incoming_description_generic;
  conflict->tree_conflict_get_local_description_func =
    conflict_tree_get_local_description_generic;

  incoming_change = svn_client_conflict_get_incoming_change(conflict);
  local_change = svn_client_conflict_get_local_change(conflict);


  if (incoming_change == svn_wc_conflict_action_delete ||
      incoming_change == svn_wc_conflict_action_replace)
    {
      conflict->tree_conflict_get_incoming_description_func =
        conflict_tree_get_description_incoming_delete;
      conflict->tree_conflict_get_incoming_details_func =
        conflict_tree_get_details_incoming_delete;
    }
  else if (incoming_change == svn_wc_conflict_action_add)
    {
      conflict->tree_conflict_get_incoming_description_func =
        conflict_tree_get_description_incoming_add;
      conflict->tree_conflict_get_incoming_details_func =
        conflict_tree_get_details_incoming_add;
    }
  else if (incoming_change == svn_wc_conflict_action_edit)
    {
      conflict->tree_conflict_get_incoming_description_func =
        conflict_tree_get_description_incoming_edit;
      conflict->tree_conflict_get_incoming_details_func =
        conflict_tree_get_details_incoming_edit;
    }

  if (local_change == svn_wc_conflict_reason_missing)
    {
      conflict->tree_conflict_get_local_description_func =
        conflict_tree_get_description_local_missing;
      conflict->tree_conflict_get_local_details_func =
        conflict_tree_get_details_local_missing;
    }

  return SVN_NO_ERROR;
}
