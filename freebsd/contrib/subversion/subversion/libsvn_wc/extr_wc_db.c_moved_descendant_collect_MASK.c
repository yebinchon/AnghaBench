#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_MOVED_DESCENDANTS_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(apr_hash_t **map,
                        svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        int op_depth,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *map = NULL;

  FUNC0(FUNC6(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_DESCENDANTS_SRC));
  FUNC0(FUNC4(stmt, "isd", wcroot->wc_id,
                                         local_relpath,
                                         op_depth));

  FUNC0(FUNC8(&have_row, stmt));
  if (! have_row)
    return FUNC2(FUNC7(stmt));

  /* Find all moved descendants. Key them on target, because that is
     always unique */
  while (have_row)
    {
      const char *src_relpath = FUNC5(stmt, 1, result_pool);
      const char *to_relpath = FUNC5(stmt, 4, result_pool);

      if (!*map)
        *map = FUNC1(result_pool);

      FUNC3(*map, to_relpath, src_relpath);

      FUNC0(FUNC8(&have_row, stmt));
    }
  FUNC0(FUNC7(stmt));

  return SVN_NO_ERROR;
}