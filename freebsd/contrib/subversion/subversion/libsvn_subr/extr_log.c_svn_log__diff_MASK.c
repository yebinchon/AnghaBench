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
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 

const char *
FUNC4(const char *path, svn_revnum_t from_revnum,
              const char *dst_path, svn_revnum_t revnum,
              svn_depth_t depth, svn_boolean_t ignore_ancestry,
              apr_pool_t *pool)
{
  const char *log_ignore_ancestry = (ignore_ancestry
                                     ? " ignore-ancestry"
                                     : "");
  if (FUNC2(path, dst_path) == 0)
    return FUNC0(pool, "diff %s r%ld:%ld%s%s",
                        FUNC3(path, pool), from_revnum, revnum,
                        FUNC1(depth, pool), log_ignore_ancestry);
  return FUNC0(pool, "diff %s@%ld %s@%ld%s%s",
                      FUNC3(path, pool), from_revnum,
                      FUNC3(dst_path, pool), revnum,
                      FUNC1(depth, pool), log_ignore_ancestry);
}