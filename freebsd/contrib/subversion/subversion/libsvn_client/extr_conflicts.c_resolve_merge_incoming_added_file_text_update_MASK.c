#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  kind; int /*<<< orphan*/  prop_state; int /*<<< orphan*/  content_state; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_wc_notify_state_t ;
typedef  scalar_t__ svn_wc_merge_outcome_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_13__ {int /*<<< orphan*/  resolution_tree; } ;
typedef  TYPE_3__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC_TRANSLATE_TO_NF ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC21 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_merge_conflict ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_tree ; 
 int /*<<< orphan*/  svn_wc_notify_state_conflicted ; 
 int /*<<< orphan*/  svn_wc_notify_state_merged ; 
 int /*<<< orphan*/  svn_wc_notify_update_update ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC25(
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

  local_abspath = FUNC6(conflict);

  /* Set up tempory storage for the working version of file. */
  FUNC0(FUNC18(&wc_tmpdir, ctx->wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));
  FUNC0(FUNC16(&working_file_tmp_stream,
                                 &working_file_tmp_abspath, wc_tmpdir,
                                 /* Don't delete automatically! */
                                 svn_io_file_del_none,
                                 scratch_pool, scratch_pool));

  /* Copy the detranslated working file to temporary storage. */
  FUNC0(FUNC20(&working_file_stream, ctx->wc_ctx,
                                    local_abspath, local_abspath,
                                    SVN_WC_TRANSLATE_TO_NF,
                                    scratch_pool, scratch_pool));
  FUNC0(FUNC15(working_file_stream, working_file_tmp_stream,
                           ctx->cancel_func, ctx->cancel_baton,
                           scratch_pool));

  /* Get a copy of the working file's properties. */
  FUNC0(FUNC23(&working_props, ctx->wc_ctx, local_abspath,
                            scratch_pool, scratch_pool));
  FUNC3(working_props, scratch_pool);

  /* Create an empty file as fake "merge-base" for the two added files.
   * The files are not ancestrally related so this is the best we can do. */
  FUNC0(FUNC11(NULL, &empty_file_abspath, NULL,
                                   svn_io_file_del_on_pool_cleanup,
                                   scratch_pool, scratch_pool));

  /* Create a property diff which shows all props as added. */
  FUNC0(FUNC14(&propdiffs, working_props,
                         FUNC2(scratch_pool), scratch_pool));

  /* ### The following WC modifications should be atomic. */
  FUNC0(FUNC17(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));

  /* Revert the path in order to restore the repository's line of
   * history, which is part of the BASE tree. This revert operation
   * is why are being careful about not losing the temporary copy. */
  err = FUNC24(ctx->wc_ctx, local_abspath, svn_depth_empty,
                       FALSE, NULL, TRUE, FALSE,
                       NULL, NULL, /* no cancellation */
                       ctx->notify_func2, ctx->notify_baton2,
                       scratch_pool);
  if (err)
    goto unlock_wc;

  /* Perform the file merge. ### Merge into tempfile and then rename on top? */
  err = FUNC22(&merge_content_outcome, &merge_props_outcome,
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

unlock_wc:
  if (err)
      err = FUNC10(
              err, FUNC1("If needed, a backup copy of '%s' can be found at '%s'"),
              FUNC8(local_abspath, scratch_pool),
              FUNC8(working_file_tmp_abspath, scratch_pool));
  err = FUNC9(err,
                                 FUNC19(ctx->wc_ctx,
                                                            lock_abspath,
                                                            scratch_pool));
  FUNC13(local_abspath, scratch_pool);
  FUNC0(err);
  
  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify;

      /* Tell the world about the file merge that just happened. */
      notify = FUNC21(local_abspath,
                                    svn_wc_notify_update_update,
                                    scratch_pool);
      if (merge_content_outcome == svn_wc_merge_conflict)
        notify->content_state = svn_wc_notify_state_conflicted;
      else
        notify->content_state = svn_wc_notify_state_merged;
      notify->prop_state = merge_props_outcome;
      notify->kind = svn_node_file;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);

      /* And also about the successfully resolved tree conflict. */
      notify = FUNC21(local_abspath, svn_wc_notify_resolved_tree,
                                    scratch_pool);
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  conflict->resolution_tree = FUNC7(option);

  /* All is good -- remove temporary copy of the working file. */
  FUNC0(FUNC12(working_file_tmp_abspath, TRUE, scratch_pool));

  return SVN_NO_ERROR;
}