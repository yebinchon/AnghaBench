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
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_UPDATE_BASE_NODE_DAV_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_sqlite__db_t *sdb,
                        const char *dir_relpath,
                        apr_int64_t wc_id,
                        apr_hash_t *cache_values,
                        apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC6(scratch_pool);
  apr_hash_index_t *hi;
  svn_sqlite__stmt_t *stmt;

  FUNC0(FUNC11(&stmt, sdb,
                                    STMT_UPDATE_BASE_NODE_DAV_CACHE));

  /* Iterate over all the wcprops, writing each one to the wc_db. */
  for (hi = FUNC1(scratch_pool, cache_values);
       hi;
       hi = FUNC2(hi))
    {
      const char *name = FUNC3(hi);
      apr_hash_t *props = FUNC4(hi);
      const char *local_relpath;

      FUNC5(iterpool);

      local_relpath = FUNC8(dir_relpath, name, iterpool);

      FUNC0(FUNC10(stmt, "is", wc_id, local_relpath));
      FUNC0(FUNC9(stmt, 3, props, iterpool));
      FUNC0(FUNC12(stmt));
    }

  FUNC7(iterpool);

  return SVN_NO_ERROR;
}