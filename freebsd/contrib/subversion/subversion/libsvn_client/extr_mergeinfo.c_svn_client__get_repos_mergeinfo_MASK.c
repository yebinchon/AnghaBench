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
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_inheritance_t ;
typedef  scalar_t__ svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_mergeinfo_t *target_mergeinfo,
                                svn_ra_session_t *ra_session,
                                const char *url,
                                svn_revnum_t rev,
                                svn_mergeinfo_inheritance_t inherit,
                                svn_boolean_t squelch_incapable,
                                apr_pool_t *pool)
{
  svn_mergeinfo_catalog_t tgt_mergeinfo_cat;

  *target_mergeinfo = NULL;

  FUNC0(FUNC4(&tgt_mergeinfo_cat,
                                                  ra_session,
                                                  url, rev, inherit,
                                                  squelch_incapable, FALSE,
                                                  pool, pool));

  if (tgt_mergeinfo_cat && FUNC1(tgt_mergeinfo_cat))
    {
      /* We asked only for the REL_PATH's mergeinfo, not any of its
         descendants.  So if there is anything in the catalog it is the
         mergeinfo for REL_PATH. */
      *target_mergeinfo =
        FUNC3(FUNC2(pool, tgt_mergeinfo_cat));

    }

  return SVN_NO_ERROR;
}