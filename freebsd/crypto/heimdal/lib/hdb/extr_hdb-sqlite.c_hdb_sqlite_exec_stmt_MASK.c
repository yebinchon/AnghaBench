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
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int SQLITE_BUSY ; 
 int SQLITE_IOERR_BLOCKED ; 
 int SQLITE_LOCKED ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
                     sqlite3 *database,
                     const char *statement,
                     krb5_error_code error_code)
{
    int ret;

    ret = FUNC5(database, statement, NULL, NULL, NULL);

    while(((ret == SQLITE_BUSY) ||
           (ret == SQLITE_IOERR_BLOCKED) ||
           (ret == SQLITE_LOCKED))) {
	FUNC2(context, "hdb-sqlite: exec busy: %d", (int)FUNC0());
        FUNC3(1);
        ret = FUNC5(database, statement, NULL, NULL, NULL);
    }

    if (ret != SQLITE_OK && error_code) {
        FUNC1(context, error_code,
			       "Execute %s: %s", statement,
                              FUNC4(database));
        return error_code;
    }

    return 0;
}