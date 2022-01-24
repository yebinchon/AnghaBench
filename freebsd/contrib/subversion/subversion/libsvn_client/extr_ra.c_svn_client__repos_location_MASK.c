#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_5__ {int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_client__pathrev_t **op_loc_p,
                           svn_ra_session_t *ra_session,
                           const svn_client__pathrev_t *peg_loc,
                           svn_revnum_t op_revnum,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const char *old_session_url;
  const char *op_url;
  svn_error_t *err;

  FUNC0(FUNC2(&old_session_url, ra_session,
                                            peg_loc->url, scratch_pool));
  err = FUNC1(&op_url, NULL, ra_session,
                        peg_loc->url, peg_loc->rev,
                        op_revnum, SVN_INVALID_REVNUM, SVN_INVALID_REVNUM,
                        result_pool, scratch_pool);
  FUNC0(FUNC4(
            err, FUNC5(ra_session, old_session_url, scratch_pool)));

  *op_loc_p = FUNC3(peg_loc->repos_root_url,
                                         peg_loc->repos_uuid,
                                         op_revnum, op_url, result_pool);
  return SVN_NO_ERROR;
}