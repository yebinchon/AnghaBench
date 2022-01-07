
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int kind; int prop_state; int content_state; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_wc_notify_state_t ;
typedef scalar_t__ svn_wc_merge_outcome_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_12__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; int cancel_baton; int cancel_func; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_13__ {int resolution_tree; } ;
typedef TYPE_3__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int SVN_WC_TRANSLATE_TO_NF ;
 int TRUE ;
 int _ (char*) ;
 int apr_hash_make (int *) ;
 int filter_props (int *,int *) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 char* svn_client_conflict_get_local_abspath (TYPE_3__*) ;
 int svn_client_conflict_option_get_id (int *) ;
 int svn_depth_empty ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_quick_wrapf (int *,int ,int ,int ) ;
 int svn_io_file_del_none ;
 int svn_io_file_del_on_pool_cleanup ;
 int * svn_io_open_unique_file3 (int *,char const**,int *,int ,int *,int *) ;
 int * svn_io_remove_file2 (char const*,int ,int *) ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;
 int svn_node_file ;
 int * svn_prop_diffs (int **,int *,int ,int *) ;
 int * svn_stream_copy3 (int *,int *,int ,int ,int *) ;
 int * svn_stream_open_unique (int **,char const**,char const*,int ,int *,int *) ;
 int * svn_wc__acquire_write_lock_for_resolve (char const**,int ,char const*,int *,int *) ;
 int * svn_wc__get_tmpdir (char const**,int ,char const*,int *,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;
 int * svn_wc__translated_stream (int **,int ,char const*,char const*,int ,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int * svn_wc_merge5 (scalar_t__*,int *,int ,char const*,char const*,char const*,int *,int *,int *,int *,int *,int ,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ svn_wc_merge_conflict ;
 int svn_wc_notify_resolved_tree ;
 int svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_merged ;
 int svn_wc_notify_update_update ;
 int * svn_wc_prop_list2 (int **,int ,char const*,int *,int *) ;
 int * svn_wc_revert5 (int ,char const*,int ,int ,int *,int ,int ,int *,int *,int (*) (int ,TYPE_1__*,int *),int ,int *) ;

__attribute__((used)) static svn_error_t *
resolve_merge_incoming_added_file_text_update(
  svn_client_conflict_option_t *option,
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_pool_t *scratch_pool)
{
  const char *wc_tmpdir;
  const char *local_abspath;
  const char *lock_abspath;
  svn_wc_merge_outcome_t merge_content_outcome;
  svn_wc_notify_state_t merge_props_outcome;
  const char *empty_file_abspath;
  const char *working_file_tmp_abspath;
  svn_stream_t *working_file_stream;
  svn_stream_t *working_file_tmp_stream;
  apr_hash_t *working_props;
  apr_array_header_t *propdiffs;
  svn_error_t *err;

  local_abspath = svn_client_conflict_get_local_abspath(conflict);


  SVN_ERR(svn_wc__get_tmpdir(&wc_tmpdir, ctx->wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));
  SVN_ERR(svn_stream_open_unique(&working_file_tmp_stream,
                                 &working_file_tmp_abspath, wc_tmpdir,

                                 svn_io_file_del_none,
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
  filter_props(working_props, scratch_pool);



  SVN_ERR(svn_io_open_unique_file3(((void*)0), &empty_file_abspath, ((void*)0),
                                   svn_io_file_del_on_pool_cleanup,
                                   scratch_pool, scratch_pool));


  SVN_ERR(svn_prop_diffs(&propdiffs, working_props,
                         apr_hash_make(scratch_pool), scratch_pool));


  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));




  err = svn_wc_revert5(ctx->wc_ctx, local_abspath, svn_depth_empty,
                       FALSE, ((void*)0), TRUE, FALSE,
                       ((void*)0), ((void*)0),
                       ctx->notify_func2, ctx->notify_baton2,
                       scratch_pool);
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

unlock_wc:
  if (err)
      err = svn_error_quick_wrapf(
              err, _("If needed, a backup copy of '%s' can be found at '%s'"),
              svn_dirent_local_style(local_abspath, scratch_pool),
              svn_dirent_local_style(working_file_tmp_abspath, scratch_pool));
  err = svn_error_compose_create(err,
                                 svn_wc__release_write_lock(ctx->wc_ctx,
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


  SVN_ERR(svn_io_remove_file2(working_file_tmp_abspath, TRUE, scratch_pool));

  return SVN_NO_ERROR;
}
