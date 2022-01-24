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
struct TYPE_3__ {int /*<<< orphan*/  db3; } ;
typedef  TYPE_1__ svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_sqlite__db_t *db, const char *sql, int ignored_err)
{
  char *err_msg;
  int sqlite_err = FUNC2(db->db3, sql, NULL, NULL, &err_msg);

  if (sqlite_err != SQLITE_OK && sqlite_err != ignored_err)
    {
      svn_error_t *err = FUNC4(FUNC0(sqlite_err), NULL,
                                           FUNC1("sqlite[S%d]: %s,"
                                             " executing statement '%s'"),
                                           sqlite_err, err_msg, sql);
      FUNC3(err_msg);
      return err;
    }

  return SVN_NO_ERROR;
}