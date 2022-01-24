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
struct TYPE_4__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  scalar_t__ svn_repos_revision_access_level_t ;
typedef  int /*<<< orphan*/  svn_repos_authz_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_repos_revision_access_none ; 
 scalar_t__ svn_repos_revision_access_partial ; 

svn_error_t *
FUNC6(apr_hash_t **table_p,
                               svn_repos_t *repos,
                               svn_revnum_t rev,
                               svn_repos_authz_func_t authz_read_func,
                               void *authz_read_baton,
                               apr_pool_t *pool)
{
  svn_repos_revision_access_level_t readability;

  FUNC0(FUNC5(&readability, repos, rev,
                                          authz_read_func, authz_read_baton,
                                          pool));

  if (readability == svn_repos_revision_access_none)
    {
      /* Return an empty hash. */
      *table_p = FUNC1(pool);
    }
  else if (readability == svn_repos_revision_access_partial)
    {
      apr_hash_t *tmphash;
      svn_string_t *value;

      /* Produce two property hashtables, both in POOL. */
      FUNC0(FUNC2(&tmphash, repos->fs, rev, TRUE,
                                        pool, pool));
      *table_p = FUNC1(pool);

      /* If they exist, we only copy svn:author and svn:date into the
         'real' hashtable being returned. */
      value = FUNC3(tmphash, SVN_PROP_REVISION_AUTHOR);
      if (value)
        FUNC4(*table_p, SVN_PROP_REVISION_AUTHOR, value);

      value = FUNC3(tmphash, SVN_PROP_REVISION_DATE);
      if (value)
        FUNC4(*table_p, SVN_PROP_REVISION_DATE, value);
    }
  else /* wholly readable revision */
    {
      FUNC0(FUNC2(table_p, repos->fs, rev, TRUE,
                                        pool, pool));
    }

  return SVN_NO_ERROR;
}