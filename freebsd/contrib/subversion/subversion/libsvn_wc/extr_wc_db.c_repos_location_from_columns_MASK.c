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
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_REPOS_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(apr_int64_t *repos_id,
                            svn_revnum_t *revision,
                            const char **repos_relpath,
                            svn_sqlite__stmt_t *stmt,
                            int col_repos_id,
                            int col_revision,
                            int col_repos_relpath,
                            apr_pool_t *result_pool)
{
  if (repos_id)
    {
      /* Fetch repository information via REPOS_ID. */
      if (FUNC1(stmt, col_repos_id))
        *repos_id = INVALID_REPOS_ID;
      else
        *repos_id = FUNC0(stmt, col_repos_id);
    }
  if (revision)
    {
      *revision = FUNC2(stmt, col_revision);
    }
  if (repos_relpath)
    {
      *repos_relpath = FUNC3(stmt, col_repos_relpath,
                                               result_pool);
    }
}