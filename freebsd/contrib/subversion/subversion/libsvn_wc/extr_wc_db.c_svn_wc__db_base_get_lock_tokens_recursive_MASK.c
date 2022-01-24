#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 int /*<<< orphan*/  STMT_SELECT_BASE_NODE_LOCK_TOKENS_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char const**,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC17(apr_hash_t **lock_tokens,
                                          svn_wc__db_t *db,
                                          const char *local_abspath,
                                          apr_pool_t *result_pool,
                                          apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_int64_t last_repos_id = INVALID_REPOS_ID;
  const char *last_repos_root_url = NULL;

  FUNC1(FUNC4(local_abspath));

  FUNC0(FUNC16(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(wcroot);

  *lock_tokens = FUNC3(result_pool);

  /* Fetch all the lock tokens in and under LOCAL_RELPATH. */
  FUNC0(FUNC12(
              &stmt, wcroot->sdb,
              STMT_SELECT_BASE_NODE_LOCK_TOKENS_RECURSIVE));

  FUNC0(FUNC9(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC14(&have_row, stmt));
  while (have_row)
    {
      apr_int64_t child_repos_id = FUNC10(stmt, 0);
      const char *child_relpath = FUNC11(stmt, 1, NULL);
      const char *lock_token = FUNC11(stmt, 2, result_pool);

      if (child_repos_id != last_repos_id)
        {
          svn_error_t *err = FUNC15(&last_repos_root_url,
                                                         NULL, wcroot,
                                                         child_repos_id,
                                                         scratch_pool);

          if (err)
            {
              return FUNC6(
                            FUNC5(err,
                                                     FUNC13(stmt)));
            }

          last_repos_id = child_repos_id;
        }

      FUNC1(last_repos_root_url != NULL);
      FUNC7(*lock_tokens,
                    FUNC8(last_repos_root_url,
                                                child_relpath, result_pool),
                    lock_token);

      FUNC0(FUNC14(&have_row, stmt));
    }
  return FUNC13(stmt);
}