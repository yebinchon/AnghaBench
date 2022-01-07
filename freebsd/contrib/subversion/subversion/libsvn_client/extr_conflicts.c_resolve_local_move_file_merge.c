
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int kind; int prop_state; int content_state; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_wc_notify_state_t ;
typedef scalar_t__ svn_wc_merge_outcome_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_15__ {int resolution_tree; int local_abspath; struct conflict_tree_local_missing_details* tree_conflict_local_details; } ;
typedef TYPE_3__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
struct conflict_tree_local_missing_details {int moved_to_abspath; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int filter_props (int *,int *) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 int svn_client__ensure_ra_session_url (char const**,int *,char const*,int *) ;
 int svn_client__open_ra_session_internal (int **,char const**,char const*,int *,int *,int ,int ,TYPE_2__*,int *,int *) ;
 int svn_client_conflict_get_incoming_new_repos_location (char const**,int *,int *,TYPE_3__*,int *,int *) ;
 int svn_client_conflict_get_incoming_old_repos_location (char const**,int *,int *,TYPE_3__*,int *,int *) ;
 int svn_client_conflict_get_repos_info (char const**,int *,TYPE_3__*,int *,int *) ;
 int svn_client_conflict_option_get_id (int *) ;
 int svn_dirent_get_longest_ancestor (int ,int ,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_sleep_for_timestamps (int ,int *) ;
 int svn_node_file ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;
 int svn_ra_get_file (int *,char*,int ,int *,int *,int **,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,char const*,int ,int *,int *) ;
 int svn_wc__acquire_write_lock_for_resolve (char const**,int ,int ,int *,int *) ;
 int * svn_wc__del_tree_conflict (int ,int ,int *) ;
 int svn_wc__get_tmpdir (char const**,int ,int ,int *,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;
 TYPE_1__* svn_wc_create_notify (int ,int ,int *) ;
 int * svn_wc_merge5 (scalar_t__*,int *,int ,char const*,char const*,int ,int *,int *,int *,int *,int *,int ,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ svn_wc_merge_conflict ;
 int svn_wc_notify_resolved_tree ;
 int svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_merged ;
 int svn_wc_notify_update_update ;

__attribute__((used)) static svn_error_t *
resolve_local_move_file_merge(svn_client_conflict_option_t *option,
                              svn_client_conflict_t *conflict,
                              svn_client_ctx_t *ctx,
                              apr_pool_t *scratch_pool)
{
  const char *lock_abspath;
  svn_error_t *err;
  const char *repos_root_url;
  const char *incoming_old_repos_relpath;
  svn_revnum_t incoming_old_pegrev;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;
  const char *wc_tmpdir;
  const char *ancestor_tmp_abspath;
  const char *incoming_tmp_abspath;
  apr_hash_t *ancestor_props;
  apr_hash_t *incoming_props;
  svn_stream_t *stream;
  const char *url;
  const char *corrected_url;
  const char *old_session_url;
  svn_ra_session_t *ra_session;
  svn_wc_merge_outcome_t merge_content_outcome;
  svn_wc_notify_state_t merge_props_outcome;
  apr_array_header_t *propdiffs;
  struct conflict_tree_local_missing_details *details;

  details = conflict->tree_conflict_local_details;

  SVN_ERR(svn_client_conflict_get_repos_info(&repos_root_url, ((void*)0),
                                             conflict, scratch_pool,
                                             scratch_pool));
  SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
            &incoming_old_repos_relpath, &incoming_old_pegrev,
            ((void*)0), conflict, scratch_pool,
            scratch_pool));
  SVN_ERR(svn_client_conflict_get_incoming_new_repos_location(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            ((void*)0), conflict, scratch_pool,
            scratch_pool));

  SVN_ERR(svn_wc__get_tmpdir(&wc_tmpdir, ctx->wc_ctx,
                             details->moved_to_abspath,
                             scratch_pool, scratch_pool));


  SVN_ERR(svn_stream_open_unique(&stream, &ancestor_tmp_abspath, wc_tmpdir,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  url = svn_path_url_add_component2(repos_root_url,
                                    incoming_old_repos_relpath,
                                    scratch_pool);
  SVN_ERR(svn_client__open_ra_session_internal(&ra_session, &corrected_url,
                                               url, ((void*)0), ((void*)0),
                                               FALSE, FALSE, ctx,
                                               scratch_pool, scratch_pool));
  SVN_ERR(svn_ra_get_file(ra_session, "", incoming_old_pegrev, stream, ((void*)0),
                          &ancestor_props, scratch_pool));
  filter_props(ancestor_props, scratch_pool);


  SVN_ERR(svn_stream_close(stream));


  SVN_ERR(svn_stream_open_unique(&stream, &incoming_tmp_abspath, wc_tmpdir,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  url = svn_path_url_add_component2(repos_root_url,
                                    incoming_new_repos_relpath,
                                    scratch_pool);
  SVN_ERR(svn_client__ensure_ra_session_url(&old_session_url, ra_session,
                                            url, scratch_pool));
  SVN_ERR(svn_ra_get_file(ra_session, "", incoming_new_pegrev, stream, ((void*)0),
                          &incoming_props, scratch_pool));

  SVN_ERR(svn_stream_close(stream));

  filter_props(incoming_props, scratch_pool);


  SVN_ERR(svn_prop_diffs(&propdiffs, incoming_props, ancestor_props,
                         scratch_pool));


  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(
            &lock_abspath, ctx->wc_ctx,
            svn_dirent_get_longest_ancestor(conflict->local_abspath,
                                            details->moved_to_abspath,
                                            scratch_pool),
            scratch_pool, scratch_pool));


  err = svn_wc_merge5(&merge_content_outcome, &merge_props_outcome,
                      ctx->wc_ctx,
                      ancestor_tmp_abspath, incoming_tmp_abspath,
                      details->moved_to_abspath,
                      ((void*)0), ((void*)0), ((void*)0),
                      ((void*)0), ((void*)0),
                      FALSE,
                      ((void*)0), ((void*)0),
                      apr_hash_count(ancestor_props) ? ancestor_props : ((void*)0),
                      propdiffs,
                      ((void*)0), ((void*)0),
                      ((void*)0), ((void*)0),
                      scratch_pool);
  svn_io_sleep_for_timestamps(details->moved_to_abspath, scratch_pool);
  if (err)
    return svn_error_compose_create(err,
                                    svn_wc__release_write_lock(ctx->wc_ctx,
                                                               lock_abspath,
                                                               scratch_pool));

  err = svn_wc__del_tree_conflict(ctx->wc_ctx, conflict->local_abspath,
                                  scratch_pool);
  err = svn_error_compose_create(err,
                                 svn_wc__release_write_lock(ctx->wc_ctx,
                                                            lock_abspath,
                                                            scratch_pool));
  if (err)
    return svn_error_trace(err);

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify;


      notify = svn_wc_create_notify(details->moved_to_abspath,
                                    svn_wc_notify_update_update,
                                    scratch_pool);
      if (merge_content_outcome == svn_wc_merge_conflict)
        notify->content_state = svn_wc_notify_state_conflicted;
      else
        notify->content_state = svn_wc_notify_state_merged;
      notify->prop_state = merge_props_outcome;
      notify->kind = svn_node_file;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);


      notify = svn_wc_create_notify(conflict->local_abspath,
                                    svn_wc_notify_resolved_tree,
                                    scratch_pool);
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  conflict->resolution_tree = svn_client_conflict_option_get_id(option);

  return SVN_NO_ERROR;
}
