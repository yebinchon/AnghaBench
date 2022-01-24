#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct svnadmin_opt_state {int /*<<< orphan*/  repository_path; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_LOCKED ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  check_cancel ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,struct svnadmin_opt_state*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repos_notify_handler ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svn_revnum_t youngest_rev;
  svn_repos_t *repos;
  svn_error_t *err;
  struct svnadmin_opt_state *opt_state = baton;
  svn_stream_t *feedback_stream = NULL;

  /* Expect no more arguments. */
  FUNC1(FUNC4(NULL, os, 0, 0, pool));

  FUNC1(FUNC13(&feedback_stream, pool));

  /* Restore default signal handlers until after we have acquired the
   * exclusive lock so that the user interrupt before we actually
   * touch the repository. */
  FUNC5();

  err = FUNC12(opt_state->repository_path, TRUE,
                           repos_notify_handler, feedback_stream,
                           check_cancel, NULL, pool);
  if (err)
    {
      if (! FUNC0(err->apr_err))
        return err;
      FUNC8(err);
      if (! opt_state->wait)
        return FUNC9(SVN_ERR_REPOS_LOCKED, NULL,
                                FUNC2("Failed to get exclusive repository "
                                  "access; perhaps another process\n"
                                  "such as httpd, svnserve or svn "
                                  "has it open?"));
      FUNC1(FUNC7(pool,
                                 FUNC2("Waiting on repository lock; perhaps"
                                   " another process has it open?\n")));
      FUNC1(FUNC6(stdout));
      FUNC1(FUNC12(opt_state->repository_path, FALSE,
                                 repos_notify_handler, feedback_stream,
                                 check_cancel, NULL, pool));
    }

  FUNC1(FUNC7(pool, FUNC2("\nRecovery completed.\n")));

  /* Since db transactions may have been replayed, it's nice to tell
     people what the latest revision is.  It also proves that the
     recovery actually worked. */
  FUNC1(FUNC3(&repos, opt_state->repository_path, opt_state, pool));
  FUNC1(FUNC10(&youngest_rev, FUNC11(repos), pool));
  FUNC1(FUNC7(pool, FUNC2("The latest repos revision is %ld.\n"),
                             youngest_rev));

  return SVN_NO_ERROR;
}