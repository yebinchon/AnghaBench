#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_INTERNAL_RELEASE_SAVEPOINT_SVN ; 
 int /*<<< orphan*/  STMT_INTERNAL_ROLLBACK_TO_SAVEPOINT_SVN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_SQLITE_BUSY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_sqlite__db_t *db,
                             svn_error_t *err)
{
  svn_sqlite__stmt_t *stmt;

  if (err)
    {
      svn_error_t *err2;

      err2 = FUNC1(&stmt, db,
                                    STMT_INTERNAL_ROLLBACK_TO_SAVEPOINT_SVN);

      if (!err2)
        {
          err2 = FUNC4(FUNC5(stmt));

          if (err2 && err2->apr_err == SVN_ERR_SQLITE_BUSY)
            {
              /* Ok, we have a major problem. Some statement is still open,
                 which makes it impossible to release this savepoint.

                 ### See huge comment in rollback_transaction() for
                     further details */

              err2 = FUNC4(FUNC2(db, err2));
              err2 = FUNC3(
                          FUNC4(FUNC5(stmt)),
                          err2);
            }
        }

      err = FUNC3(err, err2);
      err2 = FUNC1(&stmt, db,
                                    STMT_INTERNAL_RELEASE_SAVEPOINT_SVN);

      if (!err2)
        err2 = FUNC4(FUNC5(stmt));

      return FUNC3(err, err2);
    }

  FUNC0(FUNC1(&stmt, db,
                                 STMT_INTERNAL_RELEASE_SAVEPOINT_SVN));

  /* ### Releasing a savepoint can fail and leave the db connection
         unusable; see svn_sqlite__finish_transaction(). */
  return FUNC4(FUNC5(stmt));
}