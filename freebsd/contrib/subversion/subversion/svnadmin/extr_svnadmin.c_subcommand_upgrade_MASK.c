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
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct svnadmin_opt_state {int /*<<< orphan*/  repository_path; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_FS_UNSUPPORTED_UPGRADE ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_LOCKED ; 
 scalar_t__ SVN_ERR_REPOS_UNSUPPORTED_UPGRADE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repos_notify_handler ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svn_error_t *err;
  struct svnadmin_opt_state *opt_state = baton;
  svn_stream_t *feedback_stream = NULL;

  /* Expect no more arguments. */
  FUNC1(FUNC3(NULL, os, 0, 0, pool));

  FUNC1(FUNC11(&feedback_stream, pool));

  /* Restore default signal handlers. */
  FUNC4();

  err = FUNC10(opt_state->repository_path, TRUE,
                           repos_notify_handler, feedback_stream, pool);
  if (err)
    {
      if (FUNC0(err->apr_err))
        {
          FUNC7(err);
          err = SVN_NO_ERROR;
          if (! opt_state->wait)
            return FUNC8(SVN_ERR_REPOS_LOCKED, NULL,
                                    FUNC2("Failed to get exclusive repository "
                                      "access; perhaps another process\n"
                                      "such as httpd, svnserve or svn "
                                      "has it open?"));
          FUNC1(FUNC6(pool,
                                     FUNC2("Waiting on repository lock; perhaps"
                                       " another process has it open?\n")));
          FUNC1(FUNC5(stdout));
          FUNC1(FUNC10(opt_state->repository_path, FALSE,
                                     repos_notify_handler, feedback_stream,
                                     pool));
        }
      else if (err->apr_err == SVN_ERR_FS_UNSUPPORTED_UPGRADE)
        {
          return FUNC9(err,
                    FUNC2("Upgrade of this repository's underlying versioned "
                    "filesystem is not supported; consider "
                    "dumping and loading the data elsewhere"));
        }
      else if (err->apr_err == SVN_ERR_REPOS_UNSUPPORTED_UPGRADE)
        {
          return FUNC9(err,
                    FUNC2("Upgrade of this repository is not supported; consider "
                    "dumping and loading the data elsewhere"));
        }
    }
  FUNC1(err);

  FUNC1(FUNC6(pool, FUNC2("\nUpgrade completed.\n")));
  return SVN_NO_ERROR;
}