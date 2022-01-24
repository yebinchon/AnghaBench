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
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_inheritance_t ;
typedef  scalar_t__ svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_mergeinfo_t *target_mergeinfo,
                                      svn_boolean_t *inherited,
                                      svn_boolean_t *from_repos,
                                      svn_boolean_t repos_only,
                                      svn_mergeinfo_inheritance_t inherit,
                                      svn_ra_session_t *ra_session,
                                      const char *target_wcpath,
                                      svn_client_ctx_t *ctx,
                                      apr_pool_t *pool)
{
  svn_mergeinfo_catalog_t tgt_mergeinfo_cat;

  *target_mergeinfo = NULL;

  FUNC0(FUNC4(&tgt_mergeinfo_cat,
                                                        inherited, from_repos,
                                                        FALSE,
                                                        repos_only,
                                                        FALSE, inherit,
                                                        ra_session,
                                                        target_wcpath, ctx,
                                                        pool, pool));
  if (tgt_mergeinfo_cat && FUNC1(tgt_mergeinfo_cat))
    {
      /* We asked only for the TARGET_WCPATH's mergeinfo, not any of its
         descendants.  It this mergeinfo is in the catalog, it's keyed
         on TARGET_WCPATH's root-relative path.  We could dig that up
         so we can peek into our catalog, but it ought to be the only
         thing in the catalog, so we'll just fetch the first hash item. */
      *target_mergeinfo =
        FUNC3(FUNC2(pool, tgt_mergeinfo_cat));

    }

  return SVN_NO_ERROR;
}