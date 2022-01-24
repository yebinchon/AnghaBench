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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ DIFF_REVNUM_NONEXISTENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static const char *
FUNC2(const char *path,
           svn_revnum_t revnum,
           apr_pool_t *result_pool)
{
  const char *label;
  if (revnum >= 0)
    label = FUNC1(result_pool, FUNC0("%s\t(revision %ld)"), path, revnum);
  else if (revnum == DIFF_REVNUM_NONEXISTENT)
    label = FUNC1(result_pool, FUNC0("%s\t(nonexistent)"), path);
  else /* SVN_INVALID_REVNUM */
    label = FUNC1(result_pool, FUNC0("%s\t(working copy)"), path);

  return label;
}