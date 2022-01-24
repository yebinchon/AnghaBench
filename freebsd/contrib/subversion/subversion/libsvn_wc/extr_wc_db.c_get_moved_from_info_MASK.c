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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_MOVED_FROM_RELPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(const char **moved_from_relpath,
                    const char **moved_from_op_root_relpath,
                    const char *moved_to_op_root_relpath,
                    int *op_depth,
                    svn_wc__db_wcroot_t *wcroot,
                    const char *local_relpath,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  /* Run a query to get the moved-from path from the DB. */
  FUNC0(FUNC9(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_FROM_RELPATH));
  FUNC0(FUNC6(stmt, "is",
                            wcroot->wc_id, moved_to_op_root_relpath));
  FUNC0(FUNC11(&have_row, stmt));

  if (!have_row)
    {
      /* The move was only recorded at the copy-half, possibly because
       * the move operation was interrupted mid-way between the copy
       * and the delete. Treat this node as a normal copy. */
      if (moved_from_relpath)
        *moved_from_relpath = NULL;
      if (moved_from_op_root_relpath)
        *moved_from_op_root_relpath = NULL;

      FUNC0(FUNC10(stmt));
      return SVN_NO_ERROR;
    }

  if (op_depth)
    *op_depth = FUNC7(stmt, 1);

  if (moved_from_relpath || moved_from_op_root_relpath)
    {
      const char *db_delete_op_root_relpath;

      /* The moved-from path from the DB is the relpath of
       * the op_root of the delete-half of the move. */
      db_delete_op_root_relpath = FUNC8(stmt, 0,
                                                          result_pool);
      if (moved_from_op_root_relpath)
        *moved_from_op_root_relpath = db_delete_op_root_relpath;

      if (moved_from_relpath)
        {
          if (FUNC2(moved_to_op_root_relpath, local_relpath) == 0)
            {
              /* LOCAL_RELPATH is the op_root of the copied-half of the
               * move, so the correct MOVED_FROM_ABSPATH is the op-root
               * of the delete-half. */
              *moved_from_relpath = db_delete_op_root_relpath;
            }
          else
            {
              const char *child_relpath;

              /* LOCAL_RELPATH is a child that was copied along with the
               * op_root of the copied-half of the move. Construct the
               * corresponding path beneath the op_root of the delete-half. */

              /* Grab the child path relative to the op_root of the move
               * destination. */
              child_relpath = FUNC5(
                                moved_to_op_root_relpath, local_relpath);

              FUNC1(child_relpath && FUNC3(child_relpath) > 0);

              /* This join is valid because LOCAL_RELPATH has not been moved
               * within the copied-half of the move yet -- else, it would
               * be its own op_root. */
              *moved_from_relpath = FUNC4(db_delete_op_root_relpath,
                                                     child_relpath,
                                                     result_pool);
            }
        }
    }

  FUNC0(FUNC10(stmt));

  return SVN_NO_ERROR;
}