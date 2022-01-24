#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (struct notification_adjust_baton*,TYPE_2__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_22__ {int /*<<< orphan*/  number; } ;
struct TYPE_24__ {TYPE_1__ value; int /*<<< orphan*/  kind; } ;
typedef  TYPE_4__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_25__ {struct notification_adjust_baton* notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (struct notification_adjust_baton*,TYPE_2__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_5__ svn_client_ctx_t ;
struct TYPE_26__ {int /*<<< orphan*/  resolution_tree; } ;
typedef  TYPE_6__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  scalar_t__ svn_boolean_t ;
struct notification_adjust_baton {char const* checkout_abspath; char const* final_abspath; struct notification_adjust_baton* inner_baton; int /*<<< orphan*/  (* inner_func ) (struct notification_adjust_baton*,TYPE_2__*,int /*<<< orphan*/ *) ;} ;
struct find_added_rev_baton {char const* victim_abspath; scalar_t__ added_rev; int /*<<< orphan*/ * pool; int /*<<< orphan*/  parent_repos_relpath; int /*<<< orphan*/ * repos_relpath; TYPE_5__* ctx; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  find_added_rev ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct notification_adjust_baton*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct notification_adjust_baton*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct notification_adjust_baton*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__*,char const*,char const*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC11 (char const**,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  svn_io_file_del_on_close ; 
 int /*<<< orphan*/ * FUNC16 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_opt_revision_number ; 
 char* FUNC19 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct find_added_rev_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC30 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct notification_adjust_baton*,TYPE_2__*,int /*<<< orphan*/ *),struct notification_adjust_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_add ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_tree ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC33(svn_client_conflict_option_t *option,
                                 svn_client_conflict_t *conflict,
                                 svn_client_ctx_t *ctx,
                                 svn_boolean_t merge_dirs,
                                 apr_pool_t *scratch_pool)
{
  svn_ra_session_t *ra_session;
  const char *url;
  const char *corrected_url;
  const char *repos_root_url;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;
  const char *local_abspath;
  const char *lock_abspath;
  const char *tmpdir_abspath, *tmp_abspath;
  svn_error_t *err;
  svn_revnum_t copy_src_revnum;
  svn_opt_revision_t copy_src_peg_revision;
  svn_boolean_t timestamp_sleep;
  svn_wc_notify_func2_t old_notify_func2 = ctx->notify_func2;
  void *old_notify_baton2 = ctx->notify_baton2;
  struct notification_adjust_baton nb;

  local_abspath = FUNC10(conflict);

  /* Find the URL of the incoming added directory in the repository. */
  FUNC0(FUNC9(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            NULL, conflict, scratch_pool,
            scratch_pool));
  FUNC0(FUNC11(&repos_root_url, NULL,
                                             conflict, scratch_pool,
                                             scratch_pool));
  url = FUNC19(repos_root_url, incoming_new_repos_relpath,
                                    scratch_pool);
  FUNC0(FUNC8(&ra_session, &corrected_url,
                                               url, NULL, NULL, FALSE, FALSE,
                                               ctx, scratch_pool,
                                               scratch_pool));
  if (corrected_url)
    url = corrected_url;


  /* Find a temporary location in which to check out the copy source. */
  FUNC0(FUNC26(&tmpdir_abspath, ctx->wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));

  FUNC0(FUNC17(NULL, &tmp_abspath, tmpdir_abspath,
                                   svn_io_file_del_on_close,
                                   scratch_pool, scratch_pool));

  /* Make a new checkout of the requested source. While doing so,
   * resolve copy_src_revnum to an actual revision number in case it
   * was until now 'invalid' meaning 'head'.  Ask this function not to
   * sleep for timestamps, by passing a sleep_needed output param.
   * Send notifications for all nodes except the root node, and adjust
   * them to refer to the destination rather than this temporary path. */

  nb.inner_func = ctx->notify_func2;
  nb.inner_baton = ctx->notify_baton2;
  nb.checkout_abspath = tmp_abspath;
  nb.final_abspath = local_abspath;
  ctx->notify_func2 = notification_adjust_func;
  ctx->notify_baton2 = &nb;

  copy_src_peg_revision.kind = svn_opt_revision_number;
  copy_src_peg_revision.value.number = incoming_new_pegrev;

  err = FUNC7(&copy_src_revnum, &timestamp_sleep,
                                      url, tmp_abspath,
                                      &copy_src_peg_revision,
                                      &copy_src_peg_revision,
                                      svn_depth_infinity,
                                      TRUE, /* we want to ignore externals */
                                      FALSE, /* we don't allow obstructions */
                                      ra_session, ctx, scratch_pool);

  ctx->notify_func2 = old_notify_func2;
  ctx->notify_baton2 = old_notify_baton2;

  FUNC0(err);

  /* ### The following WC modifications should be atomic. */

  FUNC0(FUNC24(&lock_abspath, ctx->wc_ctx,
                                                 FUNC13(
                                                   local_abspath,
                                                   scratch_pool),
                                                 scratch_pool, scratch_pool));

  /* Remove the working directory. */
  err = FUNC31(ctx->wc_ctx, local_abspath, FALSE, FALSE,
                       NULL, NULL, /* don't allow user to cancel here */
                       ctx->notify_func2, ctx->notify_baton2,
                       scratch_pool);
  if (err)
    goto unlock_wc;

  /* Schedule dst_path for addition in parent, with copy history.
     Don't send any notification here.
     Then remove the temporary checkout's .svn dir in preparation for
     moving the rest of it into the final destination. */
  err = FUNC29(ctx->wc_ctx, tmp_abspath, local_abspath,
                     TRUE /* metadata_only */,
                     NULL, NULL, /* don't allow user to cancel here */
                     NULL, NULL, scratch_pool);
  if (err)
    goto unlock_wc;

  err = FUNC23(NULL, ctx->wc_ctx, tmp_abspath,
                                   FALSE, scratch_pool, scratch_pool);
  if (err)
    goto unlock_wc;
  err = FUNC32(ctx->wc_ctx,
                                             tmp_abspath,
                                             FALSE, FALSE,
                                             NULL, NULL, /* don't cancel */
                                             scratch_pool);
  if (err)
    goto unlock_wc;

  /* Move the temporary disk tree into place. */
  err = FUNC16(tmp_abspath, local_abspath, FALSE, scratch_pool);
  if (err)
    goto unlock_wc;

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = FUNC30(local_abspath,
                                                     svn_wc_notify_add,
                                                     scratch_pool);
      notify->kind = svn_node_dir;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  /* Resolve to current working copy state.
   * svn_client__merge_locked() requires this. */
  err = FUNC25(ctx->wc_ctx, local_abspath, scratch_pool);
  if (err)
    goto unlock_wc;

  if (merge_dirs)
    {
      svn_revnum_t base_revision;
      const char *base_repos_relpath;
      struct find_added_rev_baton b = { 0 };

      /* Find the URL and revision of the directory we have just replaced. */
      err = FUNC27(NULL, &base_revision, &base_repos_relpath,
                                  NULL, NULL, NULL, ctx->wc_ctx, local_abspath,
                                  FALSE, scratch_pool, scratch_pool);
      if (err)
        goto unlock_wc;

      url = FUNC19(repos_root_url, base_repos_relpath,
                                        scratch_pool);

      /* Trace the replaced directory's history to its origin. */
      err = FUNC21(ra_session, url, scratch_pool);
      if (err)
        goto unlock_wc;
      b.victim_abspath = local_abspath;
      b.ctx = ctx;
      b.added_rev = SVN_INVALID_REVNUM;
      b.repos_relpath = NULL;
      b.parent_repos_relpath = FUNC22(base_repos_relpath,
                                                   scratch_pool);
      b.pool = scratch_pool;

      err = FUNC20(ra_session, "", base_revision,
                                         base_revision, SVN_INVALID_REVNUM,
                                         find_added_rev, &b,
                                         scratch_pool);
      if (err)
        goto unlock_wc;

      if (b.added_rev == SVN_INVALID_REVNUM)
        {
          err = FUNC15(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                  FUNC1("Could not determine the revision in "
                                    "which '^/%s' was added to the "
                                    "repository.\n"),
                                  base_repos_relpath);
          goto unlock_wc;
        }

      /* Merge the replaced directory into the directory which replaced it.
       * We do not need to consider a reverse-merge here since the source of
       * this merge was part of the merge target working copy, not a branch
       * in the repository. */
      err = FUNC2(base_repos_relpath,
                                  url, FUNC4(b.added_rev), url,
                                  base_revision, local_abspath, FALSE,
                                  ctx, scratch_pool, scratch_pool);
      if (err)
        goto unlock_wc;
    }

unlock_wc:
  err = FUNC14(err, FUNC28(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC18(local_abspath, scratch_pool);
  FUNC0(err);

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = FUNC30(
                                  local_abspath,
                                  svn_wc_notify_resolved_tree,
                                  scratch_pool);

      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  conflict->resolution_tree = FUNC12(option);

  return SVN_NO_ERROR;
}