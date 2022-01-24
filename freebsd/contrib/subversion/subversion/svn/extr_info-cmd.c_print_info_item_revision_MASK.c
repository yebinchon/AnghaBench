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
typedef  char* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,...) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_revnum_t rev, const char *target_path,
                         apr_pool_t *pool)
{
  if (FUNC1(rev))
    {
      if (target_path)
        FUNC0(FUNC2(pool, "%-10ld %s", rev, target_path));
      else
        FUNC0(FUNC2(pool, "%ld", rev));
    }
  else if (target_path)
    FUNC0(FUNC2(pool, "%-10s %s", "", target_path));

  return SVN_NO_ERROR;
}