#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct TYPE_19__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_20__ {int /*<<< orphan*/ * url; int /*<<< orphan*/  rev; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; } ;
typedef  TYPE_3__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_21__ {TYPE_3__ loc; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_4__ merge_target_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,char const*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(merge_target_t **target_p,
               const char *wc_abspath,
               svn_boolean_t allow_mixed_rev,
               svn_boolean_t allow_local_mods,
               svn_boolean_t allow_switched_subtrees,
               svn_client_ctx_t *ctx,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  merge_target_t *target = FUNC2(result_pool, sizeof(*target));
  svn_client__pathrev_t *origin;

  target->abspath = FUNC3(result_pool, wc_abspath);

  FUNC0(FUNC5(&origin, wc_abspath, ctx,
                                         result_pool, scratch_pool));
  if (origin)
    {
      target->loc = *origin;
    }
  else
    {
      svn_error_t *err;
      /* The node has no location in the repository. It's unversioned or
       * locally added or locally deleted.
       *
       * If it's locally added or deleted, find the repository root
       * URL and UUID anyway, and leave the node URL and revision as NULL
       * and INVALID.  If it's unversioned, this will throw an error. */
      err = FUNC9(NULL, NULL,
                                        &target->loc.repos_root_url,
                                        &target->loc.repos_uuid,
                                        ctx->wc_ctx, wc_abspath,
                                        result_pool, scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
              && err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY
              && err->apr_err != SVN_ERR_WC_UPGRADE_REQUIRED)
            return FUNC8(err);

          return FUNC7(SVN_ERR_ILLEGAL_TARGET, err,
                                   FUNC1("Merge target '%s' does not exist in the "
                                     "working copy"),
                                   FUNC6(wc_abspath,
                                                          scratch_pool));
        }

      target->loc.rev = SVN_INVALID_REVNUM;
      target->loc.url = NULL;
    }

  FUNC0(FUNC4(
            wc_abspath, ctx,
            allow_mixed_rev, allow_local_mods, allow_switched_subtrees,
            scratch_pool));

  *target_p = target;
  return SVN_NO_ERROR;
}