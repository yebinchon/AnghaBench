#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;
struct TYPE_4__ {int /*<<< orphan*/  db; int /*<<< orphan*/ * remove; } ;
typedef  TYPE_1__ hdb_sqlite_db ;
struct TYPE_5__ {scalar_t__ hdb_db; } ;
typedef  TYPE_2__ HDB ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ SQLITE_DONE ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context, HDB *db,
                  krb5_const_principal principal)
{
    krb5_error_code ret;
    char *principal_string;
    hdb_sqlite_db *hsdb = (hdb_sqlite_db*)(db->hdb_db);
    sqlite3_stmt *remove = hsdb->remove;

    ret = FUNC3(context, principal, &principal_string);
    if (ret) {
        FUNC0(principal_string);
        return ret;
    }

    FUNC4(remove, 1, principal_string, -1, SQLITE_STATIC);

    ret = FUNC1(context, hsdb->db, remove);
    if (ret != SQLITE_DONE) {
	ret = EINVAL;
        FUNC2(context, ret,
                              "sqlite remove failed: %d",
                              ret);
    } else
        ret = 0;

    FUNC5(remove);
    FUNC6(remove);

    return ret;
}