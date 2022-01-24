#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

svn_error_t *
FUNC5(svn_client__pathrev_t **resolved_loc_p,
                                svn_ra_session_t *ra_session,
                                const char *path_or_url,
                                const svn_opt_revision_t *peg_revision,
                                const svn_opt_revision_t *revision,
                                svn_client_ctx_t *ctx,
                                apr_pool_t *pool)
{
  svn_opt_revision_t peg_rev = *peg_revision;
  svn_opt_revision_t start_rev = *revision;
  const char *url;
  svn_revnum_t rev;

  /* Default revisions: peg -> working or head; operative -> peg. */
  FUNC0(FUNC3(&peg_rev, &start_rev,
                                    FUNC4(path_or_url),
                                    TRUE /* notice_local_mods */,
                                    pool));

  /* Run the history function to get the object's (possibly
     different) url in REVISION. */
  FUNC0(FUNC2(&url, &rev, NULL, NULL,
                                      ra_session, path_or_url, &peg_rev,
                                      &start_rev, NULL, ctx, pool));

  FUNC0(FUNC1(resolved_loc_p,
                                                  ra_session, rev, url, pool));
  return SVN_NO_ERROR;
}