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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_REPOS_BAD_ARGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ svn_depth_exclude ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(void *baton, const char *path, const char *link_path,
                     svn_revnum_t rev, svn_depth_t depth,
                     svn_boolean_t start_empty,
                     const char *lock_token, apr_pool_t *pool)
{
  if (depth == svn_depth_exclude)
    return FUNC1(SVN_ERR_REPOS_BAD_ARGS, NULL,
                            FUNC0("Depth 'exclude' not supported for link"));

  return FUNC2(
            FUNC3(baton, path, link_path, rev, depth,
                            start_empty, lock_token, pool));
}