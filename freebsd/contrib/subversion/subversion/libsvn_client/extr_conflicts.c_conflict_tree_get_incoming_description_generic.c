
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_operation_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_psprintf (int *,int ,int ,int ) ;
 char* apr_pstrdup (int *,char const*) ;
 char* describe_incoming_change (int ,scalar_t__,int ) ;
 int map_conflict_action ;
 scalar_t__ svn_client_conflict_get_incoming_change (int *) ;
 int svn_client_conflict_get_incoming_new_repos_location (int *,int *,int *,int *,int *,int *) ;
 int svn_client_conflict_get_incoming_old_repos_location (int *,int *,int *,int *,int *,int *) ;
 int svn_client_conflict_get_operation (int *) ;
 int svn_node_kind_to_word (int ) ;
 int svn_node_unknown ;
 int svn_token__to_word (int ,scalar_t__) ;
 scalar_t__ svn_wc_conflict_action_add ;
 scalar_t__ svn_wc_conflict_action_delete ;
 scalar_t__ svn_wc_conflict_action_edit ;
 scalar_t__ svn_wc_conflict_action_replace ;

__attribute__((used)) static svn_error_t *
conflict_tree_get_incoming_description_generic(
  const char **incoming_change_description,
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_pool_t *result_pool,
  apr_pool_t *scratch_pool)
{
  const char *action;
  svn_node_kind_t incoming_kind;
  svn_wc_conflict_action_t conflict_action;
  svn_wc_operation_t conflict_operation;

  conflict_action = svn_client_conflict_get_incoming_change(conflict);
  conflict_operation = svn_client_conflict_get_operation(conflict);


  incoming_kind = svn_node_unknown;
  if (conflict_action == svn_wc_conflict_action_edit ||
      conflict_action == svn_wc_conflict_action_delete)
    {

      SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
                ((void*)0), ((void*)0), &incoming_kind, conflict, scratch_pool,
                scratch_pool));
    }
  else if (conflict_action == svn_wc_conflict_action_add ||
           conflict_action == svn_wc_conflict_action_replace)
    {




      SVN_ERR(svn_client_conflict_get_incoming_new_repos_location(
                ((void*)0), ((void*)0), &incoming_kind, conflict, scratch_pool,
                scratch_pool));
    }

  action = describe_incoming_change(incoming_kind, conflict_action,
                                    conflict_operation);
  if (action)
    {
      *incoming_change_description = apr_pstrdup(result_pool, action);
    }
  else
    {



      *incoming_change_description = apr_psprintf(result_pool,
                                       _("incoming %s %s"),
                                       svn_node_kind_to_word(incoming_kind),
                                       svn_token__to_word(map_conflict_action,
                                                          conflict_action));
    }
  return SVN_NO_ERROR;
}
