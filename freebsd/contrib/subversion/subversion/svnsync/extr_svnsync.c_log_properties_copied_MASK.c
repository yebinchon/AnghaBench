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
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVNSYNC_PROP_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_boolean_t syncprops_found,
                      svn_revnum_t rev,
                      apr_pool_t *pool)
{
  if (syncprops_found)
    FUNC0(FUNC2(pool,
                               FUNC1("Copied properties for revision %ld "
                                 "(%s* properties skipped).\n"),
                               rev, SVNSYNC_PROP_PREFIX));
  else
    FUNC0(FUNC2(pool,
                               FUNC1("Copied properties for revision %ld.\n"),
                               rev));

  return SVN_NO_ERROR;
}