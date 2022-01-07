
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {void* kind; int prop_state; int content_state; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_wc_notify_state_t ;
typedef scalar_t__ svn_wc_merge_outcome_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_16__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; int cancel_baton; int cancel_func; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_17__ {int resolution_tree; } ;
typedef TYPE_3__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int SVN_WC_TRANSLATE_TO_NF ;
 int TRUE ;
 int filter_props (int *,int *) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 int stub3 (int ,TYPE_1__*,int *) ;
 int * svn_client__open_ra_session_internal (int **,char const**,char const*,int *,int *,int ,int ,TYPE_2__*,int *,int *) ;
 int * svn_client_conflict_get_incoming_new_repos_location (char const**,int *,int *,TYPE_3__*,int *,int *) ;
 char* svn_client_conflict_get_local_abspath (TYPE_3__*) ;
 int * svn_client_conflict_get_repos_info (char const**,int *,TYPE_3__*,int *,int *) ;
 int svn_client_conflict_option_get_id (int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_io_file_del_on_pool_cleanup ;
 int * svn_io_file_flush (int *,int *) ;
 int * svn_io_open_unique_file3 (int **,char const**,char const*,int ,int *,int *) ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;
 void* svn_node_file ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int * svn_prop_diffs (int **,int *,int *,int *) ;
 int * svn_ra_get_file (int *,char*,int ,int *,int *,int **,int *) ;
 int * svn_stream_close (int *) ;
 int * svn_stream_copy3 (int *,int *,int ,int ,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int * svn_stream_open_unique (int **,char const**,char const*,int ,int *,int *) ;
 int * svn_stream_reset (int *) ;
 int * svn_wc__acquire_write_lock_for_resolve (char const**,int ,char const*,int *,int *) ;
 int * svn_wc__del_tree_conflict (int ,char const*,int *) ;
 int * svn_wc__get_tmpdir (char const**,int ,char const*,int *,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;
 int * svn_wc__translated_stream (int **,int ,char const*,char const*,int ,int *,int *) ;
 int * svn_wc_add_repos_file4 (int ,char const*,int *,int *,int *,int *,char const*,int ,int *,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int * svn_wc_delete4 (int ,char const*,int ,int ,int *,int *,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 int * svn_wc_merge5 (scalar_t__*,int *,int ,char const*,char const*,char const*,int *,int *,int *,int *,int *,int ,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ svn_wc_merge_conflict ;
 int svn_wc_notify_add ;
 int svn_wc_notify_resolved_tree ;
 int svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_merged ;
 int svn_wc_notify_update_update ;
 int * svn_wc_prop_list2 (int **,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
resolve_merge_incoming_added_file_replace_and_merge(
  svn_client_conflict_option_t *option,
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_pool_t *scratch_pool)
{
  svn_ra_session_t *ra_session;
  const char *url;
  const char *corrected_url;
  const char *repos_root_url;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;
  apr_file_t *incoming_new_file;
  svn_stream_t *incoming_new_stream;
  apr_hash_t *incoming_new_props;
  const char *local_abspath;
  const char *lock_abspath;
  const char *wc_tmpdir;
  svn_stream_t *working_file_tmp_stream;
  const char *working_file_tmp_abspath;
  svn_stream_t *working_file_stream;
  apr_hash_t *working_props;
  svn_error_t *err;
  svn_wc_merge_outcome_t merge_content_outcome;
  svn_wc_notify_state_t merge_props_outcome;
  apr_file_t *empty_file;
  const char *empty_file_abspath;
  apr_array_header_t *propdiffs;

  local_abspath = svn_client_conflict_get_local_abspath(conflict);


  SVN_ERR(svn_wc__get_tmpdir(&wc_tmpdir, ctx->wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));
  SVN_ERR(svn_stream_open_unique(&working_file_tmp_stream,
                                 &working_file_tmp_abspath, wc_tmpdir,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));


  SVN_ERR(svn_wc__translated_stream(&working_file_stream, ctx->wc_ctx,
                                    local_abspath, local_abspath,
                                    SVN_WC_TRANSLATE_TO_NF,
                                    scratch_pool, scratch_pool));
  SVN_ERR(svn_stream_copy3(working_file_stream, working_file_tmp_stream,
                           ctx->cancel_func, ctx->cancel_baton,
                           scratch_pool));


  SVN_ERR(svn_wc_prop_list2(&working_props, ctx->wc_ctx, local_abspath,
                            scratch_pool, scratch_pool));


  SVN_ERR(svn_client_conflict_get_incoming_new_repos_location(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            ((void*)0), conflict, scratch_pool,
            scratch_pool));
  SVN_ERR(svn_client_conflict_get_repos_info(&repos_root_url, ((void*)0),
                                             conflict, scratch_pool,
                                             scratch_pool));
  url = svn_path_url_add_component2(repos_root_url, incoming_new_repos_relpath,
                                    scratch_pool);
  SVN_ERR(svn_client__open_ra_session_internal(&ra_session, &corrected_url,
                                               url, ((void*)0), ((void*)0), FALSE, FALSE,
                                               ctx, scratch_pool,
                                               scratch_pool));
  if (corrected_url)
    url = corrected_url;
  SVN_ERR(svn_io_open_unique_file3(&incoming_new_file, ((void*)0), wc_tmpdir,
                                   svn_io_file_del_on_pool_cleanup,
                                   scratch_pool, scratch_pool));
  incoming_new_stream = svn_stream_from_aprfile2(incoming_new_file, TRUE,
                                                 scratch_pool);
  SVN_ERR(svn_ra_get_file(ra_session, "", incoming_new_pegrev,
                          incoming_new_stream, ((void*)0),
                          &incoming_new_props, scratch_pool));

  SVN_ERR(svn_io_file_flush(incoming_new_file, scratch_pool));


  SVN_ERR(svn_stream_reset(incoming_new_stream));

  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));




  err = svn_wc_delete4(ctx->wc_ctx, local_abspath, FALSE, FALSE,
                       ((void*)0), ((void*)0),
                       ctx->notify_func2, ctx->notify_baton2,
                       scratch_pool);
  if (err)
    goto unlock_wc;
  err = svn_wc_add_repos_file4(ctx->wc_ctx, local_abspath,
                               incoming_new_stream,
                               ((void*)0),

                               incoming_new_props,
                               ((void*)0),
                               url, incoming_new_pegrev,
                               ((void*)0), ((void*)0),
                               scratch_pool);
  if (err)
    goto unlock_wc;

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(local_abspath,
                                                     svn_wc_notify_add,
                                                     scratch_pool);
      notify->kind = svn_node_file;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }


  err = svn_wc__del_tree_conflict(ctx->wc_ctx, local_abspath, scratch_pool);
  if (err)
    goto unlock_wc;



  err = svn_io_open_unique_file3(&empty_file, &empty_file_abspath, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool);
  if (err)
    goto unlock_wc;

  filter_props(incoming_new_props, scratch_pool);


  err = svn_prop_diffs(&propdiffs, incoming_new_props,
                       working_props, scratch_pool);
  if (err)
    goto unlock_wc;


  err = svn_wc_merge5(&merge_content_outcome, &merge_props_outcome,
                      ctx->wc_ctx, empty_file_abspath,
                      working_file_tmp_abspath, local_abspath,
                      ((void*)0), ((void*)0), ((void*)0),
                      ((void*)0), ((void*)0),
                      FALSE,
                      ((void*)0), ((void*)0),
                      ((void*)0), propdiffs,
                      ((void*)0), ((void*)0),
                      ((void*)0), ((void*)0),
                      scratch_pool);
  if (err)
    goto unlock_wc;

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(
                                   local_abspath,
                                   svn_wc_notify_update_update,
                                   scratch_pool);

      if (merge_content_outcome == svn_wc_merge_conflict)
        notify->content_state = svn_wc_notify_state_conflicted;
      else
        notify->content_state = svn_wc_notify_state_merged;
      notify->prop_state = merge_props_outcome;
      notify->kind = svn_node_file;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

unlock_wc:
  err = svn_error_compose_create(err, svn_wc__release_write_lock(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  svn_io_sleep_for_timestamps(local_abspath, scratch_pool);
  SVN_ERR(err);

  SVN_ERR(svn_stream_close(incoming_new_stream));

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(
                                  local_abspath,
                                  svn_wc_notify_resolved_tree,
                                  scratch_pool);

      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  conflict->resolution_tree = svn_client_conflict_option_get_id(option);

  return SVN_NO_ERROR;
}
