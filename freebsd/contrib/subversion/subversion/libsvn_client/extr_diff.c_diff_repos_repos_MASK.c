#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* finish_report ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_path ) (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_ra_reporter3_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
struct TYPE_7__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct diff_driver_info_t {char const* orig_path_1; char const* orig_path_2; char const* anchor; int /*<<< orphan*/  session_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,char const**,scalar_t__*,scalar_t__*,int /*<<< orphan*/ **,TYPE_2__*,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__ const**,void**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(const char **root_relpath,
                 svn_boolean_t *root_is_dir,
                 struct diff_driver_info_t *ddi,
                 const char *path_or_url1,
                 const char *path_or_url2,
                 const svn_opt_revision_t *revision1,
                 const svn_opt_revision_t *revision2,
                 const svn_opt_revision_t *peg_revision,
                 svn_depth_t depth,
                 svn_boolean_t ignore_ancestry,
                 svn_boolean_t text_deltas,
                 const svn_diff_tree_processor_t *diff_processor,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_ra_session_t *extra_ra_session;

  const svn_ra_reporter3_t *reporter;
  void *reporter_baton;

  const svn_delta_editor_t *diff_editor;
  void *diff_edit_baton;

  const char *url1;
  const char *url2;
  svn_revnum_t rev1;
  svn_revnum_t rev2;
  svn_node_kind_t kind1;
  svn_node_kind_t kind2;
  const char *anchor1;
  const char *anchor2;
  const char *target1;
  const char *target2;
  svn_ra_session_t *ra_session;

  /* Prepare info for the repos repos diff. */
  FUNC0(FUNC2(&url1, &url2, &rev1, &rev2,
                                   &anchor1, &anchor2, &target1, &target2,
                                   &kind1, &kind2, &ra_session,
                                   ctx, path_or_url1, path_or_url2,
                                   revision1, revision2, peg_revision,
                                   scratch_pool));

  /* Set up the repos_diff editor on BASE_PATH, if available.
     Otherwise, we just use "". */

  if (ddi)
    {
      /* Get actual URLs. */
      ddi->orig_path_1 = url1;
      ddi->orig_path_2 = url2;

      /* This should be moved to the diff writer
         - path_or_url are provided by the caller
         - target1 is available as *root_relpath
         - (kind1 != svn_node_dir || kind2 != svn_node_dir) = !*root_is_dir */

      if (!FUNC10(path_or_url2))
        ddi->anchor = path_or_url2;
      else if (!FUNC10(path_or_url1))
        ddi->anchor = path_or_url1;
      else
        ddi->anchor = NULL;

      if (*target1 && ddi->anchor
          && (kind1 != svn_node_dir || kind2 != svn_node_dir))
        ddi->anchor = FUNC8(ddi->anchor, result_pool);
    }

  /* The repository can bring in a new working copy, but not delete
     everything. Luckily our new diff handler can just be reversed. */
  if (kind2 == svn_node_none)
    {
      const char *str_tmp;
      svn_revnum_t rev_tmp;

      str_tmp = url2;
      url2 = url1;
      url1 = str_tmp;

      rev_tmp = rev2;
      rev2 = rev1;
      rev1 = rev_tmp;

      str_tmp = anchor2;
      anchor2 = anchor1;
      anchor1 = str_tmp;

      str_tmp = target2;
      target2 = target1;
      target1 = str_tmp;

      diff_processor = FUNC7(diff_processor,
                                                               NULL,
                                                               scratch_pool);
    }

  /* Filter the first path component using a filter processor, until we fixed
     the diff processing to handle this directly */
  if (root_relpath)
    *root_relpath = FUNC1(result_pool, target1);
  else if ((kind1 != svn_node_file && kind2 != svn_node_file)
           && target1[0] != '\0')
    {
      diff_processor = FUNC6(
                                        diff_processor, target1, scratch_pool);
    }

  /* Now, we open an extra RA session to the correct anchor
     location for URL1.  This is used during the editor calls to fetch file
     contents.  */
  FUNC0(FUNC11(&extra_ra_session, ra_session, anchor1,
                              scratch_pool, scratch_pool));

  if (ddi)
    {
      const char *repos_root_url;
      const char *session_url;

      FUNC0(FUNC13(ra_session, &repos_root_url,
                                      scratch_pool));
      FUNC0(FUNC14(ra_session, &session_url,
                                      scratch_pool));

      ddi->session_relpath = FUNC15(repos_root_url,
                                                    session_url,
                                                    result_pool);
    }

  FUNC0(FUNC5(
                &diff_editor, &diff_edit_baton,
                extra_ra_session, depth,
                rev1,
                text_deltas,
                diff_processor,
                ctx->cancel_func, ctx->cancel_baton,
                scratch_pool));

  /* We want to switch our txn into URL2 */
  FUNC0(FUNC12(ra_session, &reporter, &reporter_baton,
                          rev2, target1,
                          depth, ignore_ancestry, text_deltas,
                          url2, diff_editor, diff_edit_baton, scratch_pool));

  /* Drive the reporter; do the diff. */
  FUNC0(reporter->set_path(reporter_baton, "", rev1,
                             svn_depth_infinity,
                             FALSE, NULL,
                             scratch_pool));

  return FUNC9(
                  reporter->finish_report(reporter_baton, scratch_pool));
}