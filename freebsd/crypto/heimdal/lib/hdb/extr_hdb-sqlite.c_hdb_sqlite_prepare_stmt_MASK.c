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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  MAX_RETRIES ; 
 int SQLITE_BUSY ; 
 int SQLITE_IOERR_BLOCKED ; 
 int SQLITE_LOCKED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC5(krb5_context context,
                        sqlite3 *db,
                        sqlite3_stmt **statement,
                        const char *str)
{
    int ret, tries = 0;

    ret = FUNC4(db, str, -1, statement, NULL);
    while((tries++ < MAX_RETRIES) &&
	  ((ret == SQLITE_BUSY) ||
           (ret == SQLITE_IOERR_BLOCKED) ||
           (ret == SQLITE_LOCKED))) {
	FUNC1(context, "hdb-sqlite: prepare busy");
        FUNC2(1);
        ret = FUNC4(db, str, -1, statement, NULL);
    }

    if (ret != SQLITE_OK) {
        FUNC0(context, EINVAL,
			       "Failed to prepare stmt %s: %s",
			       str, FUNC3(db));
        return EINVAL;
    }

    return 0;
}