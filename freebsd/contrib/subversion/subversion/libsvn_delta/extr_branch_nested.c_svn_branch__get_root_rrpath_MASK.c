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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

const char *
FUNC3(const svn_branch__state_t *branch,
                            apr_pool_t *result_pool)
{
  svn_branch__state_t *outer_branch;
  int outer_eid;
  const char *root_rrpath;

  FUNC1(&outer_branch, &outer_eid, branch,
                                       result_pool);
  if (outer_branch)
    {
      root_rrpath
        = FUNC2(outer_branch, outer_eid, result_pool);
    }
  else
    {
      root_rrpath = "";
    }

  FUNC0(root_rrpath);
  return root_rrpath;
}