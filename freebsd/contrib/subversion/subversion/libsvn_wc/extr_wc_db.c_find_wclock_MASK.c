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

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_ANCESTOR_WCLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(const char **lock_relpath,
            svn_wc__db_wcroot_t *wcroot,
            const char *dir_relpath,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int dir_depth = FUNC3(dir_relpath);
  const char *first_relpath;

  /* Check for locks on all directories that might be ancestors.
     As our new apis only use recursive locks the number of locks stored
     in the DB will be very low */
  FUNC0(FUNC10(&stmt, wcroot->sdb,
                                    STMT_SELECT_ANCESTOR_WCLOCKS));

  /* Get the top level relpath to reduce the worst case number of results
     to the number of directories below this node plus two.
     (1: the node itself and 2: the wcroot). */
  first_relpath = FUNC4(dir_relpath, '/');

  if (first_relpath != NULL)
    first_relpath = FUNC2(scratch_pool, dir_relpath,
                                 first_relpath - dir_relpath);
  else
    first_relpath = dir_relpath;

  FUNC0(FUNC7(stmt, "iss",
                            wcroot->wc_id,
                            dir_relpath,
                            first_relpath));

  FUNC0(FUNC12(&have_row, stmt));

  while (have_row)
    {
      const char *relpath = FUNC9(stmt, 0, NULL);

      if (FUNC6(relpath, dir_relpath))
        {
          int locked_levels = FUNC8(stmt, 1);
          int row_depth = FUNC3(relpath);

          if (locked_levels == -1
              || locked_levels + row_depth >= dir_depth)
            {
              *lock_relpath = FUNC1(result_pool, relpath);
              FUNC0(FUNC11(stmt));
              return SVN_NO_ERROR;
            }
        }

      FUNC0(FUNC12(&have_row, stmt));
    }

  *lock_relpath = NULL;

  return FUNC5(FUNC11(stmt));
}