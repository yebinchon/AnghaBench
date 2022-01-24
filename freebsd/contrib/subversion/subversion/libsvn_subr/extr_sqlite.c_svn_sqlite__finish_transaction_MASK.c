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

/* Variables and functions */
 int /*<<< orphan*/  STMT_INTERNAL_COMMIT_TRANSACTION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_sqlite__db_t *db,
                               svn_error_t *err)
{
  svn_sqlite__stmt_t *stmt;

  /* Commit or rollback the sqlite transaction. */
  if (err)
    {
      return FUNC2(FUNC1(db, err));
    }
  else
    {
      err = FUNC0(&stmt, db,
                                   STMT_INTERNAL_COMMIT_TRANSACTION);
      if (!err)
        err = FUNC2(FUNC3(stmt));

      /* Need to rollback if the commit fails as well, because otherwise the
         db connection will be left in an unusable state.

         One important case to keep in mind is trying to COMMIT with concurrent
         readers. In case the commit fails, because someone else is holding a
         shared lock, sqlite keeps the transaction, and *also* keeps the file
         locks on the database. While the first part only prevents from using
         this connection, the second part prevents everyone else from accessing
         the database while the connection is open.

         See https://www.sqlite.org/lang_transaction.html

         COMMIT might also result in an SQLITE_BUSY return code if an another
         thread or process has a shared lock on the database that prevented
         the database from being updated. When COMMIT fails in this way, the
         transaction remains active and the COMMIT can be retried later after
         the reader has had a chance to clear. */
      if (err)
        return FUNC2(FUNC1(db, err));
    }

  return SVN_NO_ERROR;
}