#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  kind; int /*<<< orphan*/  prop_state; int /*<<< orphan*/  content_state; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_wc_notify_state_t ;
typedef  scalar_t__ svn_wc_merge_outcome_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_15__ {int /*<<< orphan*/  resolution_tree; int /*<<< orphan*/  local_abspath; struct conflict_tree_local_missing_details* tree_conflict_local_details; } ;
typedef  TYPE_3__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
struct conflict_tree_local_missing_details {int /*<<< orphan*/  moved_to_abspath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 char* FUNC15 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_merge_conflict ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_tree ; 
 int /*<<< orphan*/  svn_wc_notify_state_conflicted ; 
 int /*<<< orphan*/  svn_wc_notify_state_merged ; 
 int /*<<< orphan*/  svn_wc_notify_update_update ; 

__attribute__((used)) static svn_error_t *
FUNC26(svn_client_conflict_option_t *option,
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

  FUNC0(FUNC9(&repos_root_url, NULL,
                                             conflict, scratch_pool,
                                             scratch_pool));
  FUNC0(FUNC8(
            &incoming_old_repos_relpath, &incoming_old_pegrev,
            NULL, conflict, scratch_pool,
            scratch_pool));
  FUNC0(FUNC7(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            NULL, conflict, scratch_pool,
            scratch_pool));

  FUNC0(FUNC22(&wc_tmpdir, ctx->wc_ctx,
                             details->moved_to_abspath,
                             scratch_pool, scratch_pool));

  /* Fetch the common ancestor file's content. */
  FUNC0(FUNC19(&stream, &ancestor_tmp_abspath, wc_tmpdir,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  url = FUNC15(repos_root_url,
                                    incoming_old_repos_relpath,
                                    scratch_pool);
  FUNC0(FUNC6(&ra_session, &corrected_url,
                                               url, NULL, NULL,
                                               FALSE, FALSE, ctx,
                                               scratch_pool, scratch_pool));
  FUNC0(FUNC17(ra_session, "", incoming_old_pegrev, stream, NULL,
                          &ancestor_props, scratch_pool));
  FUNC2(ancestor_props, scratch_pool);

  /* Close stream to flush the file to disk. */
  FUNC0(FUNC18(stream));

  /* Do the same for the incoming file's content. */
  FUNC0(FUNC19(&stream, &incoming_tmp_abspath, wc_tmpdir,
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  url = FUNC15(repos_root_url,
                                    incoming_new_repos_relpath,
                                    scratch_pool);
  FUNC0(FUNC5(&old_session_url, ra_session,
                                            url, scratch_pool));
  FUNC0(FUNC17(ra_session, "", incoming_new_pegrev, stream, NULL,
                          &incoming_props, scratch_pool));
  /* Close stream to flush the file to disk. */
  FUNC0(FUNC18(stream));

  FUNC2(incoming_props, scratch_pool);

  /* Create a property diff for the files. */
  FUNC0(FUNC16(&propdiffs, incoming_props, ancestor_props,
                         scratch_pool));

  /* ### The following WC modifications should be atomic. */
  FUNC0(FUNC20(
            &lock_abspath, ctx->wc_ctx,
            FUNC11(conflict->local_abspath,
                                            details->moved_to_abspath,
                                            scratch_pool),
            scratch_pool, scratch_pool));

  /* Perform the file merge. */
  err = FUNC25(&merge_content_outcome, &merge_props_outcome,
                      ctx->wc_ctx,
                      ancestor_tmp_abspath, incoming_tmp_abspath,
                      details->moved_to_abspath,
                      NULL, NULL, NULL, /* labels */
                      NULL, NULL, /* conflict versions */
                      FALSE, /* dry run */
                      NULL, NULL, /* diff3_cmd, merge_options */
                      FUNC1(ancestor_props) ? ancestor_props : NULL,
                      propdiffs,
                      NULL, NULL, /* conflict func/baton */
                      NULL, NULL, /* don't allow user to cancel here */
                      scratch_pool);
  FUNC14(details->moved_to_abspath, scratch_pool);
  if (err)
    return FUNC12(err,
                                    FUNC23(ctx->wc_ctx,
                                                               lock_abspath,
                                                               scratch_pool));

  err = FUNC21(ctx->wc_ctx, conflict->local_abspath,
                                  scratch_pool);
  err = FUNC12(err,
                                 FUNC23(ctx->wc_ctx,
                                                            lock_abspath,
                                                            scratch_pool));
  if (err)
    return FUNC13(err);

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify;

      /* Tell the world about the file merge that just happened. */
      notify = FUNC24(details->moved_to_abspath,
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
      notify = FUNC24(conflict->local_abspath,
                                    svn_wc_notify_resolved_tree,
                                    scratch_pool);
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  conflict->resolution_tree = FUNC10(option);

  return SVN_NO_ERROR;
}