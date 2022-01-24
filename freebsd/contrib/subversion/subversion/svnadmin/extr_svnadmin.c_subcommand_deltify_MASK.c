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
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svnadmin_opt_state {int /*<<< orphan*/  quiet; int /*<<< orphan*/  end_revision; int /*<<< orphan*/  start_revision; int /*<<< orphan*/  repository_path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,struct svnadmin_opt_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;
  svn_fs_t *fs;
  svn_revnum_t start = SVN_INVALID_REVNUM, end = SVN_INVALID_REVNUM;
  svn_revnum_t youngest, revision;
  apr_pool_t *subpool = FUNC11(pool);

  /* Expect no more arguments. */
  FUNC0(FUNC5(NULL, os, 0, 0, pool));

  FUNC0(FUNC4(&repos, opt_state->repository_path, opt_state, pool));
  fs = FUNC13(repos);
  FUNC0(FUNC9(&youngest, fs, pool));

  /* Find the revision numbers at which to start and end. */
  FUNC0(FUNC3(&start, &opt_state->start_revision,
                     youngest, repos, pool));
  FUNC0(FUNC3(&end, &opt_state->end_revision,
                     youngest, repos, pool));

  /* Fill in implied revisions if necessary. */
  if (start == SVN_INVALID_REVNUM)
    start = youngest;
  if (end == SVN_INVALID_REVNUM)
    end = start;

  if (start > end)
    return FUNC7(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
       FUNC1("First revision cannot be higher than second"));

  /* Loop over the requested revision range, performing the
     predecessor deltification on paths changed in each. */
  for (revision = start; revision <= end; revision++)
    {
      FUNC10(subpool);
      FUNC0(FUNC2(NULL));
      if (! opt_state->quiet)
        FUNC0(FUNC6(subpool, FUNC1("Deltifying revision %ld..."),
                                   revision));
      FUNC0(FUNC8(fs, revision, subpool));
      if (! opt_state->quiet)
        FUNC0(FUNC6(subpool, FUNC1("done.\n")));
    }
  FUNC12(subpool);

  return SVN_NO_ERROR;
}