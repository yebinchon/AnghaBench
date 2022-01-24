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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
  sqlite3 *db,                    /* Database handle to compile against */
  sqlite3_stmt **ppStmt,          /* OUT: Compiled SQL statement */
  char **pzErrmsg,                /* OUT: sqlite3_malloc()ed error message */
  const char *zSql                /* SQL statement to compile */
){
  int rc = FUNC1(db, zSql, -1, ppStmt, 0);
  if( rc!=SQLITE_OK ){
    *ppStmt = 0;
    FUNC0(db, pzErrmsg);
  }
  return rc;
}