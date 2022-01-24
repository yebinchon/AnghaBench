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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svnadmin_opt_state {int /*<<< orphan*/  quiet; int /*<<< orphan*/  use_deltas; int /*<<< orphan*/  incremental; scalar_t__ exclude; scalar_t__ include; int /*<<< orphan*/  glob; scalar_t__ file; int /*<<< orphan*/  repository_path; } ;
struct dump_filter_baton_t {scalar_t__ prefixes; int /*<<< orphan*/  do_exclude; int /*<<< orphan*/  glob; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_TRUNCATE ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  check_cancel ; 
 int /*<<< orphan*/ * dump_filter_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct svnadmin_opt_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,struct svnadmin_opt_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * repos_notify_handler ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct dump_filter_baton_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;
  svn_stream_t *out_stream;
  svn_revnum_t lower, upper;
  svn_stream_t *feedback_stream = NULL;
  struct dump_filter_baton_t filter_baton = {0};

  /* Expect no more arguments. */
  FUNC0(FUNC4(NULL, os, 0, 0, pool));

  FUNC0(FUNC3(&repos, opt_state->repository_path, opt_state, pool));
  FUNC0(FUNC2(&lower, &upper, repos, opt_state, pool));

  /* Open the file or STDOUT, depending on whether -F was specified. */
  if (opt_state->file)
    {
      apr_file_t *file;

      /* Overwrite existing files, same as with > redirection. */
      FUNC0(FUNC7(&file, opt_state->file,
                               APR_WRITE | APR_CREATE | APR_TRUNCATE
                               | APR_BUFFERED, APR_OS_DEFAULT, pool));
      out_stream = FUNC10(file, FALSE, pool);
    }
  else
    FUNC0(FUNC9(&out_stream, pool));

  /* Progress feedback goes to STDERR, unless they asked to suppress it. */
  if (! opt_state->quiet)
    feedback_stream = FUNC5(stderr, pool);

  /* Initialize the filter baton. */
  filter_baton.glob = opt_state->glob;

  if (opt_state->exclude && !opt_state->include)
    {
      filter_baton.prefixes = opt_state->exclude;
      filter_baton.do_exclude = TRUE;
    }
  else if (opt_state->include && !opt_state->exclude)
    {
      filter_baton.prefixes = opt_state->include;
      filter_baton.do_exclude = FALSE;
    }
  else if (opt_state->include && opt_state->exclude)
    {
      return FUNC6(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                               FUNC1("'--exclude' and '--include' options "
                                 "cannot be used simultaneously"));
    }

  FUNC0(FUNC8(repos, out_stream, lower, upper,
                             opt_state->incremental, opt_state->use_deltas,
                             TRUE, TRUE,
                             !opt_state->quiet ? repos_notify_handler : NULL,
                             feedback_stream,
                             filter_baton.prefixes ? dump_filter_func : NULL,
                             &filter_baton,
                             check_cancel, NULL, pool));

  return SVN_NO_ERROR;
}