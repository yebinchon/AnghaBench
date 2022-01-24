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
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svnadmin_opt_state {int /*<<< orphan*/  repository_path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  crashtest_malfunction_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,struct svnadmin_opt_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;

  (void)FUNC6(crashtest_malfunction_handler);
  FUNC0(FUNC3(&repos, opt_state->repository_path, opt_state, pool));
  FUNC0(FUNC4(pool,
                             FUNC2("Successfully opened repository '%s'.\n"
                               "Will now crash to simulate a crashing "
                               "server process.\n"),
                             FUNC5(opt_state->repository_path,
                                                    pool)));
  FUNC1();

  /* merely silence a compiler warning (this will never be executed) */
  return SVN_NO_ERROR;
}