#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {void* revision; void* lock_state; void* prop_state; void* content_state; void* kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_reporter3_t ;
struct TYPE_28__ {scalar_t__ kind; int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_29__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
struct TYPE_30__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; scalar_t__ config; } ;
typedef  TYPE_4__ svn_client_ctx_t ;
typedef  int svn_boolean_t ;
struct svn_client__dirent_fetcher_baton_t {char const* anchor_url; void* target_revision; int /*<<< orphan*/ * ra_session; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_DIFF3_CMD ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_PRESERVED_CF_EXTS ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_USE_COMMIT_TIMES ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_HELPERS ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_MISCELLANY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_RA_ILLEGAL_URL ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 void* SVN_INVALID_REVNUM ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_DEPTH ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * record_conflict ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_client__dirent_fetcher ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char const**,char const*,char const*,int /*<<< orphan*/ *,int,int,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*,char const*,int,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC14 (char const*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_exclude ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 char* FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 TYPE_3__* FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 void* svn_node_none ; 
 scalar_t__ svn_opt_revision_head ; 
 scalar_t__ svn_opt_revision_unspecified ; 
 int /*<<< orphan*/  FUNC19 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC20 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,void**,void*,char const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/  const**,void**,void**,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int,int,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct svn_client__dirent_fetcher_baton_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC28 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,void*,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC30 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* svn_wc_notify_lock_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_skip_conflicted ; 
 void* svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_update_completed ; 
 int /*<<< orphan*/  svn_wc_notify_update_skip_working_only ; 
 int /*<<< orphan*/  svn_wc_notify_update_started ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__*,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC34(svn_revnum_t *result_rev,
                svn_boolean_t *timestamp_sleep,
                apr_hash_t *conflicted_paths,
                svn_ra_session_t **ra_session_p,
                const char *local_abspath,
                const char *anchor_abspath,
                const svn_opt_revision_t *revision,
                svn_depth_t depth,
                svn_boolean_t depth_is_sticky,
                svn_boolean_t ignore_externals,
                svn_boolean_t allow_unver_obstructions,
                svn_boolean_t adds_as_modification,
                svn_boolean_t notify_summary,
                svn_client_ctx_t *ctx,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *update_editor;
  void *update_edit_baton;
  const svn_ra_reporter3_t *reporter;
  void *report_baton;
  const char *corrected_url;
  const char *target;
  const char *repos_root_url;
  const char *repos_relpath;
  const char *repos_uuid;
  const char *anchor_url;
  svn_revnum_t revnum;
  svn_boolean_t use_commit_times;
  svn_boolean_t clean_checkout = FALSE;
  const char *diff3_cmd;
  apr_hash_t *wcroot_iprops;
  svn_opt_revision_t opt_rev;
  svn_ra_session_t *ra_session = *ra_session_p;
  const char *preserved_exts_str;
  apr_array_header_t *preserved_exts;
  struct svn_client__dirent_fetcher_baton_t dfb;
  svn_boolean_t server_supports_depth;
  svn_boolean_t cropping_target;
  svn_boolean_t target_conflicted = FALSE;
  svn_config_t *cfg = ctx->config
                      ? FUNC18(ctx->config, SVN_CONFIG_CATEGORY_CONFIG)
                      : NULL;

  if (result_rev)
    *result_rev = SVN_INVALID_REVNUM;

  /* An unknown depth can't be sticky. */
  if (depth == svn_depth_unknown)
    depth_is_sticky = FALSE;

  if (FUNC3(local_abspath, anchor_abspath))
    target = FUNC15(local_abspath, scratch_pool);
  else
    target = "";

  /* Check if our anchor exists in BASE. If it doesn't we can't update. */
  FUNC1(FUNC27(NULL, NULL, &repos_relpath, &repos_root_url,
                                &repos_uuid, NULL,
                                ctx->wc_ctx, anchor_abspath,
                                TRUE /* ignore_enoent */,
                                scratch_pool, scratch_pool));

  /* It does not make sense to update conflict victims. */
  if (repos_relpath)
    {
      svn_error_t *err;
      svn_boolean_t text_conflicted, prop_conflicted;

      anchor_url = FUNC20(repos_root_url, repos_relpath,
                                               scratch_pool);

      err = FUNC28(&text_conflicted, &prop_conflicted,
                                 NULL,
                                 ctx->wc_ctx, local_abspath, scratch_pool);

      if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return FUNC17(err);
      FUNC16(err);

      /* tree-conflicts are handled by the update editor */
      if (!err && (text_conflicted || prop_conflicted))
        target_conflicted = TRUE;
    }
  else
    anchor_url = NULL;

  if (! anchor_url || target_conflicted)
    {
      if (ctx->notify_func2)
        {
          svn_wc_notify_t *nt;

          nt = FUNC30(local_abspath,
                                    target_conflicted
                                      ? svn_wc_notify_skip_conflicted
                                      : svn_wc_notify_update_skip_working_only,
                                    scratch_pool);

          ctx->notify_func2(ctx->notify_baton2, nt, scratch_pool);
        }
      return SVN_NO_ERROR;
    }

  /* We may need to crop the tree if the depth is sticky */
  cropping_target = (depth_is_sticky && depth < svn_depth_infinity);
  if (cropping_target)
    {
      svn_node_kind_t target_kind;

      if (depth == svn_depth_exclude)
        {
          FUNC1(FUNC32(ctx->wc_ctx,
                                 local_abspath,
                                 ctx->cancel_func, ctx->cancel_baton,
                                 ctx->notify_func2, ctx->notify_baton2,
                                 scratch_pool));

          /* Target excluded, we are done now */
          return SVN_NO_ERROR;
        }

      FUNC1(FUNC33(&target_kind, ctx->wc_ctx, local_abspath,
                                TRUE, TRUE, scratch_pool));
      if (target_kind == svn_node_dir)
        {
          FUNC1(FUNC31(ctx->wc_ctx, local_abspath, depth,
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    scratch_pool));
        }
    }

  /* check whether the "clean c/o" optimization is applicable */
  FUNC1(FUNC2(&clean_checkout, local_abspath, anchor_abspath,
                      scratch_pool));

  /* Get the external diff3, if any. */
  FUNC12(cfg, &diff3_cmd, SVN_CONFIG_SECTION_HELPERS,
                 SVN_CONFIG_OPTION_DIFF3_CMD, NULL);

  if (diff3_cmd != NULL)
    FUNC1(FUNC19(&diff3_cmd, diff3_cmd, scratch_pool));

  /* See if the user wants last-commit timestamps instead of current ones. */
  FUNC1(FUNC13(cfg, &use_commit_times,
                              SVN_CONFIG_SECTION_MISCELLANY,
                              SVN_CONFIG_OPTION_USE_COMMIT_TIMES, FALSE));

  /* See which files the user wants to preserve the extension of when
     conflict files are made. */
  FUNC12(cfg, &preserved_exts_str, SVN_CONFIG_SECTION_MISCELLANY,
                 SVN_CONFIG_OPTION_PRESERVED_CF_EXTS, "");
  preserved_exts = *preserved_exts_str
    ? FUNC14(preserved_exts_str, "\n\r\t\v ", FALSE, scratch_pool)
    : NULL;

  /* Let everyone know we're starting a real update (unless we're
     asked not to). */
  if (ctx->notify_func2 && notify_summary)
    {
      svn_wc_notify_t *notify
        = FUNC30(local_abspath, svn_wc_notify_update_started,
                               scratch_pool);
      notify->kind = svn_node_none;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  /* Try to reuse the RA session by reparenting it to the anchor_url.
   * This code is probably overly cautious since we only use this
   * currently when parents are missing and so all the anchor_urls
   * have to be in the same repo. */
  if (ra_session)
    {
      svn_error_t *err = FUNC24(ra_session, anchor_url, scratch_pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_RA_ILLEGAL_URL)
            {
            /* session changed repos, can't reuse it */
              FUNC16(err);
              ra_session = NULL;
            }
          else
            {
              return FUNC17(err);
            }
        }
      else
        {
          corrected_url = NULL;
        }
    }

  /* Open an RA session for the URL if one isn't already available */
  if (!ra_session)
    {
      FUNC1(FUNC10(&ra_session, &corrected_url,
                                                   anchor_url,
                                                   anchor_abspath, NULL,
                                                   TRUE /* write_dav_props */,
                                                   TRUE /* read_dav_props */,
                                                   ctx,
                                                   result_pool, scratch_pool));
      *ra_session_p = ra_session;
    }

  /* If we got a corrected URL from the RA subsystem, we'll need to
     relocate our working copy first. */
  if (corrected_url)
    {
      const char *new_repos_root_url;

      /* To relocate everything inside our repository we need the old and new
         repos root. */
      FUNC1(FUNC22(ra_session, &new_repos_root_url,
                                     scratch_pool));

      /* svn_client_relocate2() will check the uuid */
      FUNC1(FUNC11(anchor_abspath, repos_root_url,
                                   new_repos_root_url, ignore_externals,
                                   ctx, scratch_pool));

      /* Store updated repository root for externals */
      repos_root_url = new_repos_root_url;
      /* ### We should update anchor_loc->repos_uuid too, although currently
       * we don't use it. */
      anchor_url = corrected_url;
    }

  /* Resolve unspecified REVISION now, because we need to retrieve the
     correct inherited props prior to the editor drive and we need to
     use the same value of HEAD for both. */
  opt_rev.kind = revision->kind;
  opt_rev.value = revision->value;
  if (opt_rev.kind == svn_opt_revision_unspecified)
    opt_rev.kind = svn_opt_revision_head;

  /* ### todo: shouldn't svn_client__get_revision_number be able
     to take a URL as easily as a local path?  */
  FUNC1(FUNC8(&revnum, NULL, ctx->wc_ctx,
                                          local_abspath, ra_session, &opt_rev,
                                          scratch_pool));

  FUNC1(FUNC23(ra_session, &server_supports_depth,
                                SVN_RA_CAPABILITY_DEPTH, scratch_pool));

  dfb.ra_session = ra_session;
  dfb.target_revision = revnum;
  dfb.anchor_url = anchor_url;

  FUNC1(FUNC7(&wcroot_iprops, local_abspath,
                                            revnum, depth, ra_session,
                                            ctx, scratch_pool, scratch_pool));

  /* Fetch the update editor.  If REVISION is invalid, that's okay;
     the RA driver will call editor->set_target_revision later on. */
  FUNC1(FUNC26(&update_editor, &update_edit_baton,
                                    &revnum, ctx->wc_ctx, anchor_abspath,
                                    target, wcroot_iprops, use_commit_times,
                                    depth, depth_is_sticky,
                                    allow_unver_obstructions,
                                    adds_as_modification,
                                    server_supports_depth,
                                    clean_checkout,
                                    diff3_cmd, preserved_exts,
                                    svn_client__dirent_fetcher, &dfb,
                                    conflicted_paths ? record_conflict : NULL,
                                    conflicted_paths,
                                    NULL, NULL,
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    scratch_pool, scratch_pool));

  /* Tell RA to do an update of URL+TARGET to REVISION; if we pass an
     invalid revnum, that means RA will use the latest revision.  */
  FUNC1(FUNC21(ra_session, &reporter, &report_baton,
                            revnum, target,
                            (!server_supports_depth || depth_is_sticky
                             ? depth
                             : svn_depth_unknown),
                            FALSE /* send_copyfrom_args */,
                            FALSE /* ignore_ancestry */,
                            update_editor, update_edit_baton,
                            scratch_pool, scratch_pool));

  /* Past this point, we assume the WC is going to be modified so we will
   * need to sleep for timestamps. */
  *timestamp_sleep = TRUE;

  /* Drive the reporter structure, describing the revisions within
     LOCAL_ABSPATH.  When this calls reporter->finish_report, the
     reporter will drive the update_editor. */
  FUNC1(FUNC29(ctx->wc_ctx, local_abspath, reporter,
                                  report_baton, TRUE,
                                  depth, (! depth_is_sticky),
                                  (! server_supports_depth),
                                  use_commit_times,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  ctx->notify_func2, ctx->notify_baton2,
                                  scratch_pool));

  /* We handle externals after the update is complete, so that
     handling external items (and any errors therefrom) doesn't delay
     the primary operation.  */
  if ((FUNC0(depth) || cropping_target)
      && (! ignore_externals))
    {
      apr_hash_t *new_externals;
      apr_hash_t *new_depths;
      FUNC1(FUNC25(&new_externals,
                                                   &new_depths,
                                                   ctx->wc_ctx, local_abspath,
                                                   depth,
                                                   scratch_pool, scratch_pool));

      FUNC1(FUNC9(new_externals,
                                           new_depths,
                                           repos_root_url, local_abspath,
                                           depth, timestamp_sleep, ra_session,
                                           ctx, scratch_pool));
    }

  /* Let everyone know we're finished here (unless we're asked not to). */
  if (ctx->notify_func2 && notify_summary)
    {
      svn_wc_notify_t *notify
        = FUNC30(local_abspath, svn_wc_notify_update_completed,
                               scratch_pool);
      notify->kind = svn_node_none;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      notify->revision = revnum;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  /* If the caller wants the result revision, give it to them. */
  if (result_rev)
    *result_rev = revnum;

  return SVN_NO_ERROR;
}