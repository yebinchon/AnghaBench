#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* finish_report ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* link_path ) (void*,char const*,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_path ) (void*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_ra_reporter3_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_tree_processor_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
struct TYPE_10__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_11__ {char const* url; int /*<<< orphan*/  rev; } ;
typedef  TYPE_3__ svn_client__pathrev_t ;
typedef  int svn_boolean_t ;
struct diff_driver_info_t {char const* anchor; int /*<<< orphan*/  session_relpath; void* orig_path_2; void* orig_path_1; } ;
typedef  enum svn_opt_revision_kind { ____Placeholder_svn_opt_revision_kind } svn_opt_revision_kind ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_DEPTH ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,TYPE_3__**,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int svn_opt_revision_base ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 void* FUNC14 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__ const**,void**,int /*<<< orphan*/ ,char const*,scalar_t__,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC19 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,int,int,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int*,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,scalar_t__*,char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char const*,TYPE_1__ const*,void*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char const**,char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC26(const char **root_relpath,
              svn_boolean_t *root_is_dir,
              struct diff_driver_info_t *ddi,
              const char *path_or_url1,
              const svn_opt_revision_t *revision1,
              const svn_opt_revision_t *peg_revision1,
              const char *path2,
              enum svn_opt_revision_kind revision2_kind,
              svn_boolean_t reverse,
              svn_depth_t depth,
              svn_boolean_t ignore_ancestry,
              const apr_array_header_t *changelists,
              const svn_diff_tree_processor_t *diff_processor,
              svn_client_ctx_t *ctx,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *anchor, *anchor_url, *target;
  svn_ra_session_t *ra_session;
  svn_depth_t diff_depth;
  const svn_ra_reporter3_t *reporter;
  void *reporter_baton;
  const svn_delta_editor_t *diff_editor;
  void *diff_edit_baton;
  svn_boolean_t rev2_is_base = (revision2_kind == svn_opt_revision_base);
  svn_boolean_t server_supports_depth;
  const char *abspath_or_url1;
  const char *abspath2;
  const char *anchor_abspath;
  svn_boolean_t is_copy;
  svn_revnum_t cf_revision;
  const char *cf_repos_relpath;
  const char *cf_repos_root_url;
  svn_depth_t cf_depth;
  const char *copy_root_abspath;
  const char *target_url;
  svn_client__pathrev_t *loc1;

  FUNC1(! FUNC13(path2));

  if (!FUNC13(path_or_url1))
    {
      FUNC0(FUNC10(&abspath_or_url1, path_or_url1,
                                      scratch_pool));
    }
  else
    {
      abspath_or_url1 = path_or_url1;
    }

  FUNC0(FUNC10(&abspath2, path2, scratch_pool));

  /* Check if our diff target is a copied node. */
  FUNC0(FUNC22(&is_copy,
                                  &cf_revision,
                                  &cf_repos_relpath,
                                  &cf_repos_root_url,
                                  NULL, &cf_depth,
                                  &copy_root_abspath,
                                  ctx->wc_ctx, abspath2,
                                  FALSE, scratch_pool, scratch_pool));

  FUNC0(FUNC6(&ra_session, &loc1,
                                            path_or_url1, abspath2,
                                            peg_revision1, revision1,
                                            ctx, scratch_pool));

  if (revision2_kind == svn_opt_revision_base || !is_copy)
    {
      /* Convert path_or_url1 to a URL to feed to do_diff. */
      FUNC0(FUNC25(&anchor, &target, ctx->wc_ctx, path2,
                                        scratch_pool, scratch_pool));

      /* Handle the ugly case where target is ".." */
      if (*target && !FUNC12(target))
        {
          anchor = FUNC11(anchor, target, scratch_pool);
          target = "";
        }

      if (root_relpath)
        *root_relpath = FUNC2(result_pool, target);
      if (root_is_dir)
        *root_is_dir = (*target == '\0');

      /* Fetch the URL of the anchor directory. */
      FUNC0(FUNC10(&anchor_abspath, anchor, scratch_pool));
      FUNC0(FUNC23(&anchor_url, ctx->wc_ctx, anchor_abspath,
                                   scratch_pool, scratch_pool));
      FUNC1(anchor_url != NULL);

      target_url = NULL;
    }
  else /* is_copy && revision2->kind == svn_opt_revision_base */
    {
#if 0
      svn_node_kind_t kind;
#endif
      /* ### Ugly hack ahead ###
       *
       * We're diffing a locally copied/moved node.
       * Describe the copy source to the reporter instead of the copy itself.
       * Doing the latter would generate a single add_directory() call to the
       * diff editor which results in an unexpected diff (the copy would
       * be shown as deleted).
       *
       * ### But if we will receive any real changes from the repositor we
       * will most likely fail to apply them as the wc diff editor assumes
       * that we have the data to which the change applies in BASE...
       */

      target_url = FUNC14(cf_repos_root_url,
                                               cf_repos_relpath,
                                               scratch_pool);

#if 0
      /*SVN_ERR(svn_wc_read_kind2(&kind, ctx->wc_ctx, abspath2, FALSE, FALSE,
                                scratch_pool));

      if (kind != svn_node_dir
          || strcmp(copy_root_abspath, abspath2) != 0) */
#endif
        {
          /* We are looking at a subdirectory of the repository,
             We can describe the parent directory as the anchor..

             ### This 'appears to work', but that is really dumb luck
             ### for the simple cases in the test suite */
          anchor_abspath = FUNC9(abspath2, scratch_pool);
          anchor_url = FUNC14(cf_repos_root_url,
                                                   FUNC19(
                                                            cf_repos_relpath,
                                                            scratch_pool),
                                                   scratch_pool);
          target = FUNC8(abspath2, NULL);
          anchor = FUNC9(path2, scratch_pool);
        }
#if 0
      else
        {
          /* This code, while ok can't be enabled without causing test
           * failures. The repository will send some changes against
           * BASE for nodes that don't have BASE...
           */
          anchor_abspath = abspath2;
          anchor_url = svn_path_url_add_component2(cf_repos_root_url,
                                                   cf_repos_relpath,
                                                   scratch_pool);
          anchor = path2;
          target = "";
        }
#endif
    }

  FUNC0(FUNC18(ra_session, anchor_url, scratch_pool));

  if (ddi)
    {
      const char *repos_root_url;

      ddi->anchor = anchor;

      if (!reverse)
        {
          ddi->orig_path_1 = FUNC2(result_pool, loc1->url);
          ddi->orig_path_2 =
            FUNC14(anchor_url, target, result_pool);
        }
      else
        {
          ddi->orig_path_1 =
            FUNC14(anchor_url, target, result_pool);
          ddi->orig_path_2 = FUNC2(result_pool, loc1->url);
        }

      FUNC0(FUNC16(ra_session, &repos_root_url,
                                      scratch_pool));

      ddi->session_relpath = FUNC20(repos_root_url,
                                                   anchor_url,
                                                   result_pool);
    }

  if (reverse)
    diff_processor = FUNC7(
                              diff_processor, NULL, scratch_pool);

  /* Use the diff editor to generate the diff. */
  FUNC0(FUNC17(ra_session, &server_supports_depth,
                                SVN_RA_CAPABILITY_DEPTH, scratch_pool));
  FUNC0(FUNC21(&diff_editor, &diff_edit_baton,
                                  ctx->wc_ctx,
                                  anchor_abspath,
                                  target,
                                  depth,
                                  ignore_ancestry,
                                  rev2_is_base,
                                  reverse,
                                  server_supports_depth,
                                  changelists,
                                  diff_processor,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  scratch_pool, scratch_pool));

  if (depth != svn_depth_infinity)
    diff_depth = depth;
  else
    diff_depth = svn_depth_unknown;

  /* Tell the RA layer we want a delta to change our txn to URL1 */
  FUNC0(FUNC15(ra_session,
                          &reporter, &reporter_baton,
                          loc1->rev,
                          target,
                          diff_depth,
                          ignore_ancestry,
                          TRUE, /* text_deltas */
                          loc1->url,
                          diff_editor, diff_edit_baton,
                          scratch_pool));

  if (is_copy && revision2_kind != svn_opt_revision_base)
    {
      /* Report the copy source. */
      if (cf_depth == svn_depth_unknown)
        cf_depth = svn_depth_infinity;

      /* Reporting the in-wc revision as r0, makes the repository send
         everything as added, which avoids using BASE for pristine information,
         which is not there (or unrelated) for a copy */

      FUNC0(reporter->set_path(reporter_baton, "",
                                 ignore_ancestry ? 0 : cf_revision,
                                 cf_depth, FALSE, NULL, scratch_pool));

      if (*target)
        FUNC0(reporter->link_path(reporter_baton, target,
                                    target_url,
                                    ignore_ancestry ? 0 : cf_revision,
                                    cf_depth, FALSE, NULL, scratch_pool));

      /* Finish the report to generate the diff. */
      FUNC0(reporter->finish_report(reporter_baton, scratch_pool));
    }
  else
    {
      /* Create a txn mirror of path2;  the diff editor will print
         diffs in reverse.  :-)  */
      FUNC0(FUNC24(ctx->wc_ctx, abspath2,
                                      reporter, reporter_baton,
                                      FALSE, depth, TRUE,
                                      (! server_supports_depth),
                                      FALSE,
                                      ctx->cancel_func, ctx->cancel_baton,
                                      NULL, NULL, /* notification is N/A */
                                      scratch_pool));
    }

  return SVN_NO_ERROR;
}