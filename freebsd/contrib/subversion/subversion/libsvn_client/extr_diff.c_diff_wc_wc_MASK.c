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
struct TYPE_6__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_7__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct diff_driver_info_t {char const* anchor; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 char const* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_opt_revision_base ; 
 scalar_t__ svn_opt_revision_working ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC11(const char **root_relpath,
           svn_boolean_t *root_is_dir,
           struct diff_driver_info_t *ddi,
           const char *path1,
           const svn_opt_revision_t *revision1,
           const char *path2,
           const svn_opt_revision_t *revision2,
           svn_depth_t depth,
           svn_boolean_t ignore_ancestry,
           const apr_array_header_t *changelists,
           const svn_diff_tree_processor_t *diff_processor,
           svn_client_ctx_t *ctx,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  const char *abspath1;

  FUNC1(! FUNC7(path1));
  FUNC1(! FUNC7(path2));

  FUNC0(FUNC5(&abspath1, path1, scratch_pool));

  /* Currently we support only the case where path1 and path2 are the
     same path. */
  if ((FUNC3(path1, path2) != 0)
      || (! ((revision1->kind == svn_opt_revision_base)
             && (revision2->kind == svn_opt_revision_working))))
    return FUNC10(
       FUNC6(SVN_ERR_INCORRECT_PARAMS, NULL,
                        FUNC2("Only diffs between a path's text-base "
                          "and its working files are supported at this time"
                          )));

  if (ddi)
    {
      svn_node_kind_t kind;

      FUNC0(FUNC9(&kind, ctx->wc_ctx, abspath1,
                              TRUE, FALSE, scratch_pool));

      if (kind != svn_node_dir)
        ddi->anchor = FUNC4(path1, scratch_pool);
      else
        ddi->anchor = path1;
    }

  FUNC0(FUNC8(root_relpath, root_is_dir,
                        ctx->wc_ctx, abspath1, depth,
                        ignore_ancestry, changelists,
                        diff_processor,
                        ctx->cancel_func, ctx->cancel_baton,
                        result_pool, scratch_pool));
  return SVN_NO_ERROR;
}