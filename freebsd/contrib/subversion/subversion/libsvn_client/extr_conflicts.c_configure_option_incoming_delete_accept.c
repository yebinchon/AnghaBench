
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_11__ {int local_abspath; struct conflict_tree_incoming_delete_details* tree_conflict_incoming_details; } ;
typedef TYPE_2__ svn_client_conflict_t ;
typedef int svn_boolean_t ;
struct conflict_tree_incoming_delete_details {int * moves; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_resolution_option (int *,TYPE_2__*,int ,int ,char const*,int ) ;
 char* apr_psprintf (int *,int ,int ) ;
 int resolve_incoming_delete_accept ;
 scalar_t__ svn_client_conflict_get_incoming_change (TYPE_2__*) ;
 int svn_client_conflict_get_incoming_new_repos_location (char const**,int *,int *,TYPE_2__*,int *,int *) ;
 char* svn_client_conflict_get_local_abspath (TYPE_2__*) ;
 scalar_t__ svn_client_conflict_get_local_change (TYPE_2__*) ;
 int svn_client_conflict_option_incoming_delete_accept ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_wc__get_wcroot (char const**,int ,int ,int *,int *) ;
 scalar_t__ svn_wc_conflict_action_delete ;
 scalar_t__ svn_wc_conflict_reason_edited ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;

__attribute__((used)) static svn_error_t *
configure_option_incoming_delete_accept(svn_client_conflict_t *conflict,
                                        svn_client_ctx_t *ctx,
                                        apr_array_header_t *options,
                                        apr_pool_t *scratch_pool)
{
  svn_wc_conflict_action_t incoming_change;
  svn_wc_conflict_reason_t local_change;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;

  incoming_change = svn_client_conflict_get_incoming_change(conflict);
  local_change = svn_client_conflict_get_local_change(conflict);
  SVN_ERR(svn_client_conflict_get_incoming_new_repos_location(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            ((void*)0), conflict, scratch_pool,
            scratch_pool));

  if (incoming_change == svn_wc_conflict_action_delete)
    {
      struct conflict_tree_incoming_delete_details *incoming_details;
      svn_boolean_t is_incoming_move;

      incoming_details = conflict->tree_conflict_incoming_details;
      is_incoming_move = (incoming_details != ((void*)0) &&
                          incoming_details->moves != ((void*)0));
      if (is_incoming_move &&
          (local_change == svn_wc_conflict_reason_edited ||
          local_change == svn_wc_conflict_reason_moved_away))
        {


          return SVN_NO_ERROR;
        }
      else
        {
          const char *description;
          const char *wcroot_abspath;
          const char *local_abspath;

          SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath, ctx->wc_ctx,
                                     conflict->local_abspath, scratch_pool,
                                     scratch_pool));
          local_abspath = svn_client_conflict_get_local_abspath(conflict);
          description =
            apr_psprintf(scratch_pool, _("accept the deletion of '%s'"),
              svn_dirent_local_style(svn_dirent_skip_ancestor(wcroot_abspath,
                                                              local_abspath),
                                     scratch_pool));
          add_resolution_option(
            options, conflict,
            svn_client_conflict_option_incoming_delete_accept,
            _("Accept incoming deletion"), description,
            resolve_incoming_delete_accept);
        }
    }

  return SVN_NO_ERROR;
}
