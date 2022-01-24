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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(const char *propname,
                       svn_string_t **propval,
                       const char *URL,
                       const svn_opt_revision_t *revision,
                       svn_revnum_t *set_rev,
                       svn_client_ctx_t *ctx,
                       apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  apr_pool_t *subpool = FUNC4(pool);
  svn_error_t *err;

  /* Open an RA session for the URL. Note that we don't have a local
     directory, nor a place to put temp files. */
  FUNC0(FUNC2(&ra_session, URL, NULL,
                                      ctx, subpool, subpool));

  /* Resolve the revision into something real, and return that to the
     caller as well. */
  FUNC0(FUNC1(set_rev, NULL, ctx->wc_ctx, NULL,
                                          ra_session, revision, subpool));

  /* The actual RA call. */
  err = FUNC6(ra_session, *set_rev, propname, propval, pool);

  /* Close RA session */
  FUNC5(subpool);
  return FUNC3(err);
}