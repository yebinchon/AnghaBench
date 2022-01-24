#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct svnadmin_opt_state {scalar_t__ quiet; int /*<<< orphan*/  normalize_props; int /*<<< orphan*/  ignore_dates; int /*<<< orphan*/  bypass_prop_validation; int /*<<< orphan*/  use_post_commit_hook; int /*<<< orphan*/  use_pre_commit_hook; int /*<<< orphan*/  parent_dir; int /*<<< orphan*/  uuid_action; scalar_t__ file; int /*<<< orphan*/  repository_path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_BAD_PROPERTY_VALUE ; 
 int /*<<< orphan*/  SVN_ERR_BAD_PROPERTY_VALUE_EOL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  check_cancel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct svnadmin_opt_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,struct svnadmin_opt_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * repos_notify_handler ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svn_error_t *err;
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;
  svn_revnum_t lower, upper;
  svn_stream_t *in_stream;
  svn_stream_t *feedback_stream = NULL;

  /* Expect no more arguments. */
  FUNC0(FUNC4(NULL, os, 0, 0, pool));

  /* Find the revision numbers at which to start and end.  We only
     support a limited set of revision kinds: number and unspecified. */
  FUNC0(FUNC2(&lower, &upper, opt_state));

  FUNC0(FUNC3(&repos, opt_state->repository_path, opt_state, pool));

  /* Open the file or STDIN, depending on whether -F was specified. */
  if (opt_state->file)
    FUNC0(FUNC10(&in_stream, opt_state->file,
                                     pool, pool));
  else
    FUNC0(FUNC9(&in_stream, TRUE, pool));

  /* Progress feedback goes to STDOUT, unless they asked to suppress it. */
  if (! opt_state->quiet)
    feedback_stream = FUNC5(stdout, pool);

  err = FUNC8(repos, in_stream, lower, upper,
                           opt_state->uuid_action, opt_state->parent_dir,
                           opt_state->use_pre_commit_hook,
                           opt_state->use_post_commit_hook,
                           !opt_state->bypass_prop_validation,
                           opt_state->ignore_dates,
                           opt_state->normalize_props,
                           opt_state->quiet ? NULL : repos_notify_handler,
                           feedback_stream, check_cancel, NULL, pool);

  if (FUNC6(err, SVN_ERR_BAD_PROPERTY_VALUE_EOL))
    {
      return FUNC7(err,
                                  FUNC1("A property with invalid line ending "
                                    "found in dumpstream; consider using "
                                    "--normalize-props while loading."));
    }
  else if (err && err->apr_err == SVN_ERR_BAD_PROPERTY_VALUE)
    {
      return FUNC7(err,
                                  FUNC1("Invalid property value found in "
                                    "dumpstream; consider repairing the "
                                    "source or using --bypass-prop-validation "
                                    "while loading."));
    }

  return err;
}