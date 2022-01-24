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
struct TYPE_4__ {int /*<<< orphan*/  abspath; int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_ALL_EXCLUDED_DESCENDANTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(apr_hash_t **excluded_subtrees,
                                 svn_wc__db_t *db,
                                 const char *local_abspath,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  FUNC1(FUNC4(local_abspath));
  FUNC0(FUNC12(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(wcroot);

  FUNC0(FUNC9(&stmt, wcroot->sdb,
                                    STMT_SELECT_ALL_EXCLUDED_DESCENDANTS));
  FUNC0(FUNC7(stmt, "is",
                            wcroot->wc_id,
                            local_relpath));
  FUNC0(FUNC11(&have_row, stmt));

  if (have_row)
    *excluded_subtrees = FUNC3(result_pool);
  else
    *excluded_subtrees = NULL;

  while (have_row)
    {
      const char *abs_path =
        FUNC5(wcroot->abspath,
                        FUNC8(stmt, 0, NULL),
                        result_pool);
      FUNC6(*excluded_subtrees, abs_path, abs_path);
      FUNC0(FUNC11(&have_row, stmt));
    }

  FUNC0(FUNC10(stmt));
  return SVN_NO_ERROR;
}