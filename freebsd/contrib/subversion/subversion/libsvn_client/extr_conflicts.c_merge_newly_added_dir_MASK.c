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
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* finish_report ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_path ) (void*,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_ra_reporter3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  file_added; int /*<<< orphan*/  dir_added; } ;
typedef  TYPE_2__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
struct TYPE_15__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
struct merge_newly_added_dir_baton {char const* target_abspath; char const* added_repos_relpath; void* merge_right_rev; void* merge_left_rev; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; TYPE_3__* ctx; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  diff_dir_added ; 
 int /*<<< orphan*/  diff_file_added ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 TYPE_2__* FUNC5 (struct merge_newly_added_dir_baton*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (TYPE_2__ const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__ const**,void**,void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(const char *added_repos_relpath,
                      const char *source1,
                      svn_revnum_t rev1,
                      const char *source2,
                      svn_revnum_t rev2,
                      const char *target_abspath,
                      svn_boolean_t reverse_merge,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_diff_tree_processor_t *processor;
  struct merge_newly_added_dir_baton baton = { 0 };
  const svn_diff_tree_processor_t *diff_processor;
  svn_ra_session_t *ra_session;
  const char *corrected_url;
  svn_ra_session_t *extra_ra_session;
  const svn_ra_reporter3_t *reporter;
  void *reporter_baton;
  const svn_delta_editor_t *diff_editor;
  void *diff_edit_baton;
  const char *anchor1;
  const char *anchor2;
  const char *target1;
  const char *target2;

  FUNC10(&anchor1, &target1, source1, scratch_pool);
  FUNC10(&anchor2, &target2, source2, scratch_pool);

  baton.target_abspath = target_abspath;
  baton.ctx = ctx;
  baton.added_repos_relpath = added_repos_relpath;
  FUNC0(FUNC11(NULL, NULL,
                                      &baton.repos_root_url, &baton.repos_uuid,
                                      ctx->wc_ctx, target_abspath,
                                      scratch_pool, scratch_pool));
  baton.merge_left_rev = rev1;
  baton.merge_right_rev = rev2;

  processor = FUNC5(&baton, scratch_pool);
  processor->dir_added = diff_dir_added;
  processor->file_added = diff_file_added;

  diff_processor = processor;
  if (reverse_merge)
    diff_processor = FUNC7(diff_processor,
                                                             NULL,
                                                             scratch_pool);

  /* Filter the first path component using a filter processor, until we fixed
     the diff processing to handle this directly */
  diff_processor = FUNC6(
                     diff_processor, target1, scratch_pool);

  FUNC0(FUNC4(&ra_session, &corrected_url,
                                               anchor2, NULL, NULL, FALSE,
                                               FALSE, ctx,
                                               scratch_pool, scratch_pool));
  if (corrected_url)
    anchor2 = corrected_url;

  /* Extra RA session is used during the editor calls to fetch file contents. */
  FUNC0(FUNC8(&extra_ra_session, ra_session, anchor2,
                              scratch_pool, scratch_pool));

  /* Create a repos-repos diff editor. */
  FUNC0(FUNC3(
                &diff_editor, &diff_edit_baton,
                extra_ra_session, svn_depth_infinity, rev1, TRUE,
                diff_processor, ctx->cancel_func, ctx->cancel_baton,
                scratch_pool));

  /* We want to switch our txn into URL2 */
  FUNC0(FUNC9(ra_session, &reporter, &reporter_baton,
                          rev2, target1, svn_depth_infinity, TRUE, TRUE,
                          source2, diff_editor, diff_edit_baton, scratch_pool));

  /* Drive the reporter; do the diff. */
  FUNC0(reporter->set_path(reporter_baton, "", rev1,
                             svn_depth_infinity,
                             FALSE, NULL,
                             scratch_pool));

  FUNC0(reporter->finish_report(reporter_baton, scratch_pool));

  return SVN_NO_ERROR;
}