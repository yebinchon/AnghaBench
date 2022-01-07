
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
struct TYPE_15__ {int resolution_tree; } ;
typedef TYPE_3__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_hash_make (int *) ;
 int filter_props (int *,int *) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
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
 int svn_node_file ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int * svn_prop_diffs (int **,int *,int ,int *) ;
 int * svn_ra_get_file (int *,char*,int ,int *,int *,int **,int *) ;
 int * svn_stream_close (int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int * svn_wc__acquire_write_lock_for_resolve (char const**,int ,char const*,int *,int *) ;
 int * svn_wc__del_tree_conflict (int ,char const*,int *) ;
 int * svn_wc__get_tmpdir (char const**,int ,char const*,int *,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int * svn_wc_merge5 (scalar_t__*,int *,int ,char const*,char const*,char const*,int *,int *,int *,int *,int *,int ,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ svn_wc_merge_conflict ;
 int svn_wc_notify_resolved_tree ;
 int svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_merged ;
 int svn_wc_notify_update_update ;

__attribute__((used)) static svn_error_t *
resolve_merge_incoming_added_file_text_merge(
  svn_client_conflict_option_t *option,
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_pool_t *scratch_pool)
{
  svn_ra_session_t *ra_session;
  const char *url;
  const char *corrected_url;
  const char *repos_root_url;
  const char *wc_tmpdir;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;
  const char *local_abspath;
  const char *lock_abspath;
  svn_wc_merge_outcome_t merge_content_outcome;
  svn_wc_notify_state_t merge_props_outcome;
  apr_file_t *incoming_new_file;
  const char *incoming_new_tmp_abspath;
  const char *empty_file_abspath;
  svn_stream_t *incoming_new_stream;
  apr_hash_t *incoming_new_props;
  apr_array_header_t *propdiffs;
  svn_error_t *err;

  local_abspath = svn_client_conflict_get_local_abspath(conflict);


  SVN_ERR(svn_wc__get_tmpdir(&wc_tmpdir, ctx->wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));
  SVN_ERR(svn_io_open_unique_file3(&incoming_new_file,
                                   &incoming_new_tmp_abspath, wc_tmpdir,
                                   svn_io_file_del_on_pool_cleanup,
                                   scratch_pool, scratch_pool));
  incoming_new_stream = svn_stream_from_aprfile2(incoming_new_file, TRUE,
                                                 scratch_pool);


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
  SVN_ERR(svn_ra_get_file(ra_session, "", incoming_new_pegrev,
                          incoming_new_stream, ((void*)0),
                          &incoming_new_props, scratch_pool));


  SVN_ERR(svn_stream_close(incoming_new_stream));
  SVN_ERR(svn_io_file_flush(incoming_new_file, scratch_pool));

  filter_props(incoming_new_props, scratch_pool);



  SVN_ERR(svn_io_open_unique_file3(((void*)0), &empty_file_abspath, ((void*)0),
                                   svn_io_file_del_on_pool_cleanup,
                                   scratch_pool, scratch_pool));


  SVN_ERR(svn_prop_diffs(&propdiffs, incoming_new_props,
                         apr_hash_make(scratch_pool), scratch_pool));


  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));

  err = svn_wc__del_tree_conflict(ctx->wc_ctx, local_abspath, scratch_pool);
  if (err)
    return svn_error_compose_create(err,
                                    svn_wc__release_write_lock(ctx->wc_ctx,
                                                               lock_abspath,
                                                               scratch_pool));

  err = svn_wc_merge5(&merge_content_outcome, &merge_props_outcome,
                      ctx->wc_ctx, empty_file_abspath,
                      incoming_new_tmp_abspath, local_abspath,
                      ((void*)0), ((void*)0), ((void*)0),
                      ((void*)0), ((void*)0),
                      FALSE,
                      ((void*)0), ((void*)0),
                      ((void*)0), propdiffs,
                      ((void*)0), ((void*)0),
                      ((void*)0), ((void*)0),
                      scratch_pool);
  err = svn_error_compose_create(err, svn_wc__release_write_lock(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  svn_io_sleep_for_timestamps(local_abspath, scratch_pool);
  SVN_ERR(err);

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify;


      notify = svn_wc_create_notify(local_abspath,
                                    svn_wc_notify_update_update,
                                    scratch_pool);
      if (merge_content_outcome == svn_wc_merge_conflict)
        notify->content_state = svn_wc_notify_state_conflicted;
      else
        notify->content_state = svn_wc_notify_state_merged;
      notify->prop_state = merge_props_outcome;
      notify->kind = svn_node_file;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);


      notify = svn_wc_create_notify(local_abspath, svn_wc_notify_resolved_tree,
                                    scratch_pool);
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  conflict->resolution_tree = svn_client_conflict_option_get_id(option);

  return SVN_NO_ERROR;
}
