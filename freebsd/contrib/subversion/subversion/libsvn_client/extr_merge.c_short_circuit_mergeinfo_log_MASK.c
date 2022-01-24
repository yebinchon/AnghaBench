#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  svn_log_entry_receiver_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_CEASE_INVOCATION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t*
FUNC9(svn_mergeinfo_catalog_t *target_mergeinfo_cat,
                            svn_boolean_t finding_merged,
                            const char *target_path_or_url,
                            const svn_opt_revision_t *target_peg_revision,
                            const char *source_path_or_url,
                            const svn_opt_revision_t *source_peg_revision,
                            const svn_opt_revision_t *source_start_revision,
                            const svn_opt_revision_t *source_end_revision,
                            svn_log_entry_receiver_t receiver,
                            svn_revnum_t *revision,
                            svn_client_ctx_t *ctx,
                            svn_ra_session_t *ra_session,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  apr_array_header_t *revprops;
  svn_error_t *err;
  const char *session_url;

  FUNC0(FUNC7(ra_session, &session_url, scratch_pool));

  revprops = FUNC2(scratch_pool, 0, sizeof(const char *));
  err = FUNC3(finding_merged,
                                  target_path_or_url,
                                  target_peg_revision,
                                  target_mergeinfo_cat,
                                  source_path_or_url,
                                  source_peg_revision,
                                  source_start_revision,
                                  source_end_revision,
                                  receiver, revision,
                                  TRUE, svn_depth_infinity,
                                  revprops, ctx, ra_session,
                                  result_pool, scratch_pool);

  err = FUNC5(
                  err,
                  FUNC8(ra_session, session_url, scratch_pool));

  if (err)
    {
      /* We expect RECEIVER to short-circuit the (potentially expensive) log
         by raising an SVN_ERR_CEASE_INVOCATION -- see operative_rev_receiver.
         So we can ignore that error, but only as long as we actually found a
         valid revision. */
      if (FUNC1(*revision)
          && err->apr_err == SVN_ERR_CEASE_INVOCATION)
        {
          FUNC4(err);
          err = NULL;
        }
      else
        {
          return FUNC6(err);
        }
    }
  return SVN_NO_ERROR;
}