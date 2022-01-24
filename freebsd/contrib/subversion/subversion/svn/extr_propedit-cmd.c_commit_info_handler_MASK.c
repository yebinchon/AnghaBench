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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_commit_info_t ;
struct commit_info_baton {int /*<<< orphan*/  target_local; int /*<<< orphan*/  pname; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const svn_commit_info_t *commit_info,
                    void *baton,
                    apr_pool_t *pool)
{
  struct commit_info_baton *cib = baton;

  FUNC0(FUNC3(pool,
                             FUNC1("Set new value for property '%s' on '%s'\n"),
                             cib->pname, cib->target_local));
  FUNC0(FUNC2(commit_info, NULL, pool));

  return SVN_NO_ERROR;
}