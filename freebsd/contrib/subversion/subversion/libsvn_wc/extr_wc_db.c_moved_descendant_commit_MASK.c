#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_COMMIT_UPDATE_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        apr_int64_t repos_id,
                        const char *repos_relpath,
                        svn_revnum_t revision,
                        apr_hash_t *children,
                        apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;
  svn_sqlite__stmt_t *stmt;
  apr_hash_index_t *hi;

  FUNC1(*local_relpath != '\0'
                 && *repos_relpath != '\0');

  if (!children)
    return SVN_NO_ERROR;

  /* Then update them */
  FUNC0(FUNC14(&stmt, wcroot->sdb,
                                    STMT_COMMIT_UPDATE_ORIGIN));

  iterpool = FUNC9(scratch_pool);
  for (hi = FUNC2(scratch_pool, children); hi; hi = FUNC3(hi))
    {
      const char *src_relpath = FUNC5(hi);
      const char *to_relpath = FUNC4(hi);
      const char *new_repos_relpath;
      int to_op_depth = FUNC7(to_relpath);
      int affected;
      apr_hash_t *map;

      FUNC8(iterpool);

      FUNC1(to_op_depth > 0);

      new_repos_relpath = FUNC11(
                            repos_relpath,
                            FUNC12(local_relpath,
                                                      src_relpath),
                            iterpool);

      FUNC0(FUNC13(stmt, "isdisr", wcroot->wc_id,
                                                to_relpath,
                                                to_op_depth,
                                                repos_id,
                                                new_repos_relpath,
                                                revision));
      FUNC0(FUNC15(&affected, stmt));

#ifdef SVN_DEBUG
      /* Enable in release code?
         Broken moves are not fatal yet, but this assertion would break
         committing them */
      SVN_ERR_ASSERT(affected >= 1); /* If this fails there is no move dest */
#endif

      FUNC0(FUNC6(&map, wcroot, to_relpath, to_op_depth,
                                       iterpool, iterpool));
      FUNC0(FUNC16(wcroot, to_relpath,
                                      repos_id, new_repos_relpath, revision,
                                      map, iterpool));
    }

  FUNC10(iterpool);
  return SVN_NO_ERROR;
}