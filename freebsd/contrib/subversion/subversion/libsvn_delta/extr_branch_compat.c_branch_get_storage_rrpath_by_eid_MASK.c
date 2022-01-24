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
typedef  int /*<<< orphan*/  svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(const svn_branch__state_t *branch,
                                 int eid,
                                 apr_pool_t *result_pool)
{
  const char *path = FUNC1(branch, eid, result_pool);
  const char *rrpath = NULL;

  if (path)
    {
      rrpath = FUNC2(FUNC0(branch,
                                                               result_pool),
                                path, result_pool);
    }
  return rrpath;
}