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
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int SQLITE_BUSY ; 
 int SQLITE_IOERR_BLOCKED ; 
 int SQLITE_LOCKED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(krb5_context context, sqlite3 *db, sqlite3_stmt *stmt)
{
    int ret;

    ret = FUNC3(stmt);
    while(((ret == SQLITE_BUSY) ||
           (ret == SQLITE_IOERR_BLOCKED) ||
           (ret == SQLITE_LOCKED))) {
	FUNC1(context, "hdb-sqlite: step busy: %d", (int)FUNC0());
        FUNC2(1);
        ret = FUNC3(stmt);
    }
    return ret;
}