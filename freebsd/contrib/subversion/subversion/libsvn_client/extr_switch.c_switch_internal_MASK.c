#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  lock_state; int /*<<< orphan*/  prop_state; int /*<<< orphan*/  content_state; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_reporter3_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
struct TYPE_20__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; scalar_t__ config; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_21__ {char const* repos_root_url; char const* url; int /*<<< orphan*/  rev; } ;
typedef  TYPE_3__ svn_client__pathrev_t ;
typedef  scalar_t__ svn_boolean_t ;
struct svn_client__dirent_fetcher_baton_t {char const* anchor_url; int /*<<< orphan*/  target_revision; int /*<<< orphan*/ * ra_session; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_DIFF3_CMD ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_PRESERVED_CF_EXTS ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_USE_COMMIT_TIMES ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_HELPERS ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_MISCELLANY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_UNRELATED_RESOURCES ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_MISSING_URL ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  SVN_ERR_WC_INVALID_SWITCH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_DEPTH ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * record_conflict ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_client__dirent_fetcher ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,TYPE_3__**,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_exclude ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 char* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC16 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  svn_node_none ; 
 int /*<<< orphan*/  FUNC20 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC21 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct svn_client__dirent_fetcher_baton_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,void*,scalar_t__,int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC33 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_lock_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_update_completed ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__*,int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC37(svn_revnum_t *result_rev,
                apr_hash_t *conflicted_paths,
                const char *local_abspath,
                const char *anchor_abspath,
                const char *switch_url,
                const svn_opt_revision_t *peg_revision,
                const svn_opt_revision_t *revision,
                svn_depth_t depth,
                svn_boolean_t depth_is_sticky,
                svn_boolean_t ignore_externals,
                svn_boolean_t allow_unver_obstructions,
                svn_boolean_t ignore_ancestry,
                svn_boolean_t *timestamp_sleep,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{
  const svn_ra_reporter3_t *reporter;
  void *report_baton;
  const char *anchor_url, *target;
  svn_client__pathrev_t *switch_loc;
  svn_ra_session_t *ra_session;
  svn_revnum_t revnum;
  const char *diff3_cmd;
  apr_hash_t *wcroot_iprops;
  apr_array_header_t *inherited_props;
  svn_boolean_t use_commit_times;
  const svn_delta_editor_t *switch_editor;
  void *switch_edit_baton;
  const char *preserved_exts_str;
  apr_array_header_t *preserved_exts;
  svn_boolean_t server_supports_depth;
  struct svn_client__dirent_fetcher_baton_t dfb;
  svn_config_t *cfg = ctx->config
                      ? FUNC18(ctx->config, SVN_CONFIG_CATEGORY_CONFIG)
                      : NULL;

  /* An unknown depth can't be sticky. */
  if (depth == svn_depth_unknown)
    depth_is_sticky = FALSE;

  /* Do not support the situation of both exclude and switch a target. */
  if (depth == svn_depth_exclude)
    return FUNC17(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                             FUNC3("Cannot both exclude and switch a path"));

  /* Get the external diff3, if any. */
  FUNC11(cfg, &diff3_cmd, SVN_CONFIG_SECTION_HELPERS,
                 SVN_CONFIG_OPTION_DIFF3_CMD, NULL);

  if (diff3_cmd != NULL)
    FUNC1(FUNC20(&diff3_cmd, diff3_cmd, pool));

  /* See if the user wants last-commit timestamps instead of current ones. */
  FUNC1(FUNC12(cfg, &use_commit_times,
                              SVN_CONFIG_SECTION_MISCELLANY,
                              SVN_CONFIG_OPTION_USE_COMMIT_TIMES, FALSE));

  {
    svn_boolean_t has_working;
    FUNC1(FUNC31(&has_working, ctx->wc_ctx, local_abspath,
                                     pool));

    if (has_working)
      return FUNC17(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                               FUNC3("Cannot switch '%s' because it is not in the "
                                 "repository yet"),
                               FUNC16(local_abspath, pool));
  }

  /* See which files the user wants to preserve the extension of when
     conflict files are made. */
  FUNC11(cfg, &preserved_exts_str, SVN_CONFIG_SECTION_MISCELLANY,
                 SVN_CONFIG_OPTION_PRESERVED_CF_EXTS, "");
  preserved_exts = *preserved_exts_str
    ? FUNC13(preserved_exts_str, "\n\r\t\v ", FALSE, pool)
    : NULL;

  /* Sanity check.  Without these, the switch is meaningless. */
  FUNC2(switch_url && (switch_url[0] != '\0'));

  if (FUNC5(local_abspath, anchor_abspath))
    target = FUNC14(local_abspath, pool);
  else
    target = "";

  FUNC1(FUNC30(&anchor_url, ctx->wc_ctx, anchor_abspath,
                               pool, pool));
  if (! anchor_url)
    return FUNC17(SVN_ERR_ENTRY_MISSING_URL, NULL,
                             FUNC3("Directory '%s' has no URL"),
                             FUNC16(anchor_abspath, pool));

  /* We may need to crop the tree if the depth is sticky */
  if (depth_is_sticky && depth < svn_depth_infinity)
    {
      svn_node_kind_t target_kind;

      if (depth == svn_depth_exclude)
        {
          FUNC1(FUNC35(ctx->wc_ctx,
                                 local_abspath,
                                 ctx->cancel_func, ctx->cancel_baton,
                                 ctx->notify_func2, ctx->notify_baton2,
                                 pool));

          /* Target excluded, we are done now */
          return SVN_NO_ERROR;
        }

      FUNC1(FUNC36(&target_kind, ctx->wc_ctx, local_abspath,
                                TRUE, TRUE, pool));

      if (target_kind == svn_node_dir)
        FUNC1(FUNC34(ctx->wc_ctx, local_abspath, depth,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  ctx->notify_func2, ctx->notify_baton2,
                                  pool));
    }

  /* Open an RA session to 'source' URL */
  FUNC1(FUNC9(&ra_session, &switch_loc,
                                            switch_url, anchor_abspath,
                                            peg_revision, revision,
                                            ctx, pool));

  /* Disallow a switch operation to change the repository root of the
     target. */
  if (! FUNC26(switch_loc->repos_root_url, anchor_url))
    return FUNC17(SVN_ERR_WC_INVALID_SWITCH, NULL,
                             FUNC3("'%s'\nis not the same repository as\n'%s'"),
                             anchor_url, switch_loc->repos_root_url);

  /* If we're not ignoring ancestry, then error out if the switch
     source and target don't have a common ancestory.

     ### We're acting on the anchor here, not the target.  Is that
     ### okay? */
  if (! ignore_ancestry)
    {
      svn_client__pathrev_t *target_base_loc, *yca;

      FUNC1(FUNC10(&target_base_loc, local_abspath,
                                           ctx->wc_ctx, pool, pool));

      if (!target_base_loc)
        yca = NULL; /* Not versioned */
      else
        {
          FUNC1(FUNC7(
                  &yca, switch_loc, target_base_loc, ra_session, ctx,
                  pool, pool));
        }
      if (! yca)
        return FUNC17(SVN_ERR_CLIENT_UNRELATED_RESOURCES, NULL,
                                 FUNC3("'%s' shares no common ancestry with '%s'"),
                                 switch_url,
                                 FUNC16(local_abspath, pool));
    }

  wcroot_iprops = FUNC4(pool);

  /* Will the base of LOCAL_ABSPATH require an iprop cache post-switch?
     If we are switching LOCAL_ABSPATH to the root of the repository then
     we don't need to cache inherited properties.  In all other cases we
     *might* need to cache iprops. */
  if (FUNC5(switch_loc->repos_root_url, switch_loc->url) != 0)
    {
      svn_boolean_t wc_root;
      svn_boolean_t needs_iprop_cache = TRUE;

      FUNC1(FUNC29(&wc_root, ctx->wc_ctx, local_abspath,
                                pool));

      /* Switching the WC root to anything but the repos root means
         we need an iprop cache. */
      if (!wc_root)
        {
          /* We know we are switching a subtree to something other than the
             repos root, but if we are unswitching that subtree we don't
             need an iprops cache. */
          const char *target_parent_url;
          const char *unswitched_url;

          /* Calculate the URL LOCAL_ABSPATH would have if it was unswitched
             relative to its parent. */
          FUNC1(FUNC30(&target_parent_url, ctx->wc_ctx,
                                       FUNC15(local_abspath,
                                                          pool),
                                       pool, pool));
          unswitched_url = FUNC21(
            target_parent_url,
            FUNC14(local_abspath, pool),
            pool);

          /* If LOCAL_ABSPATH will be unswitched relative to its parent, then
             it doesn't need an iprop cache.  Note: It doesn't matter if
             LOCAL_ABSPATH is withing a switched subtree, only if it's the
             *root* of a switched subtree.*/
          if (FUNC5(unswitched_url, switch_loc->url) == 0)
            needs_iprop_cache = FALSE;
      }


      if (needs_iprop_cache)
        {
          FUNC1(FUNC23(ra_session, &inherited_props,
                                             "", switch_loc->rev, pool,
                                             pool));
          FUNC19(wcroot_iprops, local_abspath, inherited_props);
        }
    }

  FUNC1(FUNC25(ra_session, anchor_url, pool));

  /* Fetch the switch (update) editor.  If REVISION is invalid, that's
     okay; the RA driver will call editor->set_target_revision() later on. */
  FUNC1(FUNC24(ra_session, &server_supports_depth,
                                SVN_RA_CAPABILITY_DEPTH, pool));

  dfb.ra_session = ra_session;
  dfb.anchor_url = anchor_url;
  dfb.target_revision = switch_loc->rev;

  FUNC1(FUNC28(&switch_editor, &switch_edit_baton,
                                    &revnum, ctx->wc_ctx, anchor_abspath,
                                    target, switch_loc->url, wcroot_iprops,
                                    use_commit_times, depth,
                                    depth_is_sticky, allow_unver_obstructions,
                                    server_supports_depth,
                                    diff3_cmd, preserved_exts,
                                    svn_client__dirent_fetcher, &dfb,
                                    conflicted_paths ? record_conflict : NULL,
                                    conflicted_paths,
                                    NULL, NULL,
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    pool, pool));

  /* Tell RA to do an update of URL+TARGET to REVISION; if we pass an
     invalid revnum, that means RA will use the latest revision. */
  FUNC1(FUNC22(ra_session, &reporter, &report_baton,
                            switch_loc->rev,
                            target,
                            depth_is_sticky ? depth : svn_depth_unknown,
                            switch_loc->url,
                            FALSE /* send_copyfrom_args */,
                            ignore_ancestry,
                            switch_editor, switch_edit_baton,
                            pool, pool));

  /* Past this point, we assume the WC is going to be modified so we will
   * need to sleep for timestamps. */
  *timestamp_sleep = TRUE;

  /* Drive the reporter structure, describing the revisions within
     LOCAL_ABSPATH.  When this calls reporter->finish_report, the
     reporter will drive the switch_editor. */
  FUNC1(FUNC32(ctx->wc_ctx, local_abspath, reporter,
                                  report_baton, TRUE,
                                  depth, (! depth_is_sticky),
                                  (! server_supports_depth),
                                  use_commit_times,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  ctx->notify_func2, ctx->notify_baton2,
                                  pool));

  /* We handle externals after the switch is complete, so that
     handling external items (and any errors therefrom) doesn't delay
     the primary operation. */
  if (FUNC0(depth) && (! ignore_externals))
    {
      apr_hash_t *new_externals;
      apr_hash_t *new_depths;
      FUNC1(FUNC27(&new_externals,
                                                   &new_depths,
                                                   ctx->wc_ctx, local_abspath,
                                                   depth, pool, pool));

      FUNC1(FUNC8(new_externals,
                                           new_depths,
                                           switch_loc->repos_root_url,
                                           local_abspath,
                                           depth, timestamp_sleep, ra_session,
                                           ctx, pool));
    }

  /* Let everyone know we're finished here. */
  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify
        = FUNC33(anchor_abspath, svn_wc_notify_update_completed,
                               pool);
      notify->kind = svn_node_none;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      notify->revision = revnum;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }

  /* If the caller wants the result revision, give it to them. */
  if (result_rev)
    *result_rev = revnum;

  return SVN_NO_ERROR;
}