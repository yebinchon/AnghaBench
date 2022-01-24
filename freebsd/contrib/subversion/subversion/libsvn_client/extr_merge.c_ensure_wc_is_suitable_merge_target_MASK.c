#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_NOT_READY_TO_MERGE ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(const char *target_abspath,
                                   svn_client_ctx_t *ctx,
                                   svn_boolean_t allow_mixed_rev,
                                   svn_boolean_t allow_local_mods,
                                   svn_boolean_t allow_switched_subtrees,
                                   apr_pool_t *scratch_pool)
{
  svn_node_kind_t target_kind;

  /* Check the target exists. */
  FUNC0(FUNC7(target_abspath, &target_kind, scratch_pool));
  if (target_kind == svn_node_none)
    return FUNC6(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                             FUNC2("Path '%s' does not exist"),
                             FUNC4(target_abspath,
                                                    scratch_pool));
  FUNC0(FUNC11(&target_kind, ctx->wc_ctx, target_abspath,
                            FALSE, FALSE, scratch_pool));
  if (target_kind != svn_node_dir && target_kind != svn_node_file)
    return FUNC6(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC2("Merge target '%s' does not exist in the "
                               "working copy"), target_abspath);

  /* Perform the mixed-revision check first because it's the cheapest one. */
  if (! allow_mixed_rev)
    {
      svn_revnum_t min_rev;
      svn_revnum_t max_rev;

      FUNC0(FUNC3(&min_rev, &max_rev, target_abspath,
                                           FALSE, ctx, scratch_pool));

      if (!(FUNC1(min_rev) && FUNC1(max_rev)))
        {
          svn_boolean_t is_added;

          /* Allow merge into added nodes. */
          FUNC0(FUNC10(&is_added, ctx->wc_ctx, target_abspath,
                                        scratch_pool));
          if (is_added)
            return SVN_NO_ERROR;
          else
            return FUNC5(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, NULL,
                                    FUNC2("Cannot determine revision of working "
                                      "copy"));
        }

      if (min_rev != max_rev)
        return FUNC6(SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED, NULL,
                                 FUNC2("Cannot merge into mixed-revision working "
                                   "copy [%ld:%ld]; try updating first"),
                                   min_rev, max_rev);
    }

  /* Next, check for switched subtrees. */
  if (! allow_switched_subtrees)
    {
      svn_boolean_t is_switched;

      FUNC0(FUNC9(&is_switched, ctx->wc_ctx,
                                            target_abspath, NULL,
                                            scratch_pool));
      if (is_switched)
        return FUNC5(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, NULL,
                                FUNC2("Cannot merge into a working copy "
                                  "with a switched subtree"));
    }

  /* This is the most expensive check, so it is performed last.*/
  if (! allow_local_mods)
    {
      svn_boolean_t is_modified;

      FUNC0(FUNC8(&is_modified, ctx->wc_ctx,
                                     target_abspath, TRUE,
                                     ctx->cancel_func,
                                     ctx->cancel_baton,
                                     scratch_pool));
      if (is_modified)
        return FUNC5(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, NULL,
                                FUNC2("Cannot merge into a working copy "
                                  "that has local modifications"));
    }

  return SVN_NO_ERROR;
}