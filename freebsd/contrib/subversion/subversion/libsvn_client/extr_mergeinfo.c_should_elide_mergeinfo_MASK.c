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
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_boolean_t *elides,
                       svn_mergeinfo_t parent_mergeinfo,
                       svn_mergeinfo_t child_mergeinfo,
                       const char *path_suffix,
                       apr_pool_t *scratch_pool)
{
  /* Easy out: No child mergeinfo to elide. */
  if (child_mergeinfo == NULL)
    {
      *elides = FALSE;
    }
  else if (FUNC1(child_mergeinfo) == 0)
    {
      /* Empty mergeinfo elides to empty mergeinfo or to "nothing",
         i.e. it isn't overriding any parent. Otherwise it doesn't
         elide. */
      *elides = (!parent_mergeinfo || FUNC1(parent_mergeinfo) == 0);
    }
  else if (!parent_mergeinfo || FUNC1(parent_mergeinfo) == 0)
    {
      /* Non-empty mergeinfo never elides to empty mergeinfo
         or no mergeinfo. */
      *elides = FALSE;
    }
  else
    {
      /* Both CHILD_MERGEINFO and PARENT_MERGEINFO are non-NULL and
         non-empty. */
      svn_mergeinfo_t path_tweaked_parent_mergeinfo;

      /* If we need to adjust the paths in PARENT_MERGEINFO do it now. */
      if (path_suffix)
        FUNC0(FUNC2(
                  &path_tweaked_parent_mergeinfo, parent_mergeinfo,
                  path_suffix, scratch_pool, scratch_pool));
      else
        path_tweaked_parent_mergeinfo = parent_mergeinfo;

      FUNC0(FUNC3(elides,
                                    path_tweaked_parent_mergeinfo,
                                    child_mergeinfo, TRUE, scratch_pool));
    }

  return SVN_NO_ERROR;
}