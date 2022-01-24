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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_notify_func_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_repos_notify_warning_found_old_mergeinfo ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_boolean_t *found_old_mergeinfo,
                           const char *mergeinfo_str,
                           svn_revnum_t oldest_dumped_rev,
                           svn_repos_notify_func_t notify_func,
                           void *notify_baton,
                           apr_pool_t *pool)
{
  svn_mergeinfo_t mergeinfo, old_mergeinfo;

  FUNC0(FUNC5(&mergeinfo, mergeinfo_str, pool));
  FUNC0(FUNC4(
            &old_mergeinfo, mergeinfo,
            oldest_dumped_rev - 1, 0,
            TRUE, pool, pool));

  if (FUNC2(old_mergeinfo))
    {
      FUNC3(pool, notify_func, notify_baton,
                     svn_repos_notify_warning_found_old_mergeinfo,
                     FUNC1("Mergeinfo referencing revision(s) prior "
                       "to the oldest dumped revision (r%ld). "
                       "Loading this dump may result in invalid "
                       "mergeinfo."),
                     oldest_dumped_rev);

      if (found_old_mergeinfo)
        *found_old_mergeinfo = TRUE;
    }

  return SVN_NO_ERROR;
}