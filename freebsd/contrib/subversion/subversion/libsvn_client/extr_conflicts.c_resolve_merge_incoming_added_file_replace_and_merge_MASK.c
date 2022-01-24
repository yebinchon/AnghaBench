#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void* kind; int /*<<< orphan*/  prop_state; int /*<<< orphan*/  content_state; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_wc_notify_state_t ;
typedef  scalar_t__ svn_wc_merge_outcome_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_16__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_17__ {int /*<<< orphan*/  resolution_tree; } ;
typedef  TYPE_3__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC_TRANSLATE_TO_NF ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (char const**,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 void* svn_node_file ; 
 char* FUNC14 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC28 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_merge_conflict ; 
 int /*<<< orphan*/  svn_wc_notify_add ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_tree ; 
 int /*<<< orphan*/  svn_wc_notify_state_conflicted ; 
 int /*<<< orphan*/  svn_wc_notify_state_merged ; 
 int /*<<< orphan*/  svn_wc_notify_update_update ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC32(
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

  local_abspath = FUNC7(conflict);

  /* Set up tempory storage for the working version of file. */
  FUNC0(FUNC24(&wc_tmpdir, ctx->wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));
  FUNC0(FUNC20(&working_file_tmp_stream,
                                 &working_file_tmp_abspath, wc_tmpdir,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));

  /* Copy the detranslated working file to temporary storage. */
  FUNC0(FUNC26(&working_file_stream, ctx->wc_ctx,
                                    local_abspath, local_abspath,
                                    SVN_WC_TRANSLATE_TO_NF,
                                    scratch_pool, scratch_pool));
  FUNC0(FUNC18(working_file_stream, working_file_tmp_stream,
                           ctx->cancel_func, ctx->cancel_baton,
                           scratch_pool));

  /* Get a copy of the working file's properties. */
  FUNC0(FUNC31(&working_props, ctx->wc_ctx, local_abspath,
                            scratch_pool, scratch_pool));

  /* Fetch the incoming added file from the repository. */
  FUNC0(FUNC6(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            NULL, conflict, scratch_pool,
            scratch_pool));
  FUNC0(FUNC8(&repos_root_url, NULL,
                                             conflict, scratch_pool,
                                             scratch_pool));
  url = FUNC14(repos_root_url, incoming_new_repos_relpath,
                                    scratch_pool);
  FUNC0(FUNC5(&ra_session, &corrected_url,
                                               url, NULL, NULL, FALSE, FALSE,
                                               ctx, scratch_pool,
                                               scratch_pool));
  if (corrected_url)
    url = corrected_url;
  FUNC0(FUNC12(&incoming_new_file, NULL, wc_tmpdir,
                                   svn_io_file_del_on_pool_cleanup,
                                   scratch_pool, scratch_pool));
  incoming_new_stream = FUNC19(incoming_new_file, TRUE,
                                                 scratch_pool);
  FUNC0(FUNC16(ra_session, "", incoming_new_pegrev,
                          incoming_new_stream, NULL, /* fetched_rev */
                          &incoming_new_props, scratch_pool));
  /* Flush file to disk. */
  FUNC0(FUNC11(incoming_new_file, scratch_pool));

  /* Reset the stream in preparation for adding its content to WC. */
  FUNC0(FUNC21(incoming_new_stream));

  FUNC0(FUNC22(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));

  /* ### The following WC modifications should be atomic. */

  /* Replace the working file with the file from the repository. */
  err = FUNC29(ctx->wc_ctx, local_abspath, FALSE, FALSE,
                       NULL, NULL, /* don't allow user to cancel here */
                       ctx->notify_func2, ctx->notify_baton2,
                       scratch_pool);
  if (err)
    goto unlock_wc;
  err = FUNC27(ctx->wc_ctx, local_abspath,
                               incoming_new_stream,
                               NULL, /* ### could we merge first, then set
                                        ### the merged content here? */
                               incoming_new_props,
                               NULL, /* ### merge props first, set here? */
                               url, incoming_new_pegrev,
                               NULL, NULL, /* don't allow user to cancel here */
                               scratch_pool);
  if (err)
    goto unlock_wc;

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = FUNC28(local_abspath,
                                                     svn_wc_notify_add,
                                                     scratch_pool);
      notify->kind = svn_node_file;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  /* Resolve to current working copy state. svn_wc_merge5() requires this. */
  err = FUNC23(ctx->wc_ctx, local_abspath, scratch_pool);
  if (err)
    goto unlock_wc;

  /* Create an empty file as fake "merge-base" for the two added files.
   * The files are not ancestrally related so this is the best we can do. */
  err = FUNC12(&empty_file, &empty_file_abspath, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool);
  if (err)
    goto unlock_wc;

  FUNC1(incoming_new_props, scratch_pool);

  /* Create a property diff for the files. */
  err = FUNC15(&propdiffs, incoming_new_props,
                       working_props, scratch_pool);
  if (err)
    goto unlock_wc;

  /* Perform the file merge. */
  err = FUNC30(&merge_content_outcome, &merge_props_outcome,
                      ctx->wc_ctx, empty_file_abspath,
                      working_file_tmp_abspath, local_abspath,
                      NULL, NULL, NULL, /* labels */
                      NULL, NULL, /* conflict versions */
                      FALSE, /* dry run */
                      NULL, NULL, /* diff3_cmd, merge_options */
                      NULL, propdiffs,
                      NULL, NULL, /* conflict func/baton */
                      NULL, NULL, /* don't allow user to cancel here */
                      scratch_pool);
  if (err)
    goto unlock_wc;

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = FUNC28(
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
  err = FUNC10(err, FUNC25(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC13(local_abspath, scratch_pool);
  FUNC0(err);

  FUNC0(FUNC17(incoming_new_stream));

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = FUNC28(
                                  local_abspath,
                                  svn_wc_notify_resolved_tree,
                                  scratch_pool);

      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  conflict->resolution_tree = FUNC9(option);

  return SVN_NO_ERROR;
}