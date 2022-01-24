#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  krb5_kvno ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_10__ {void* data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;
struct TYPE_11__ {int /*<<< orphan*/  db; int /*<<< orphan*/ * fetch; } ;
typedef  TYPE_2__ hdb_sqlite_db ;
struct TYPE_12__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_3__ hdb_entry_ex ;
struct TYPE_13__ {scalar_t__ hdb_master_key_set; scalar_t__ hdb_db; } ;
typedef  TYPE_4__ HDB ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ HDB_ERR_NOENTRY ; 
 unsigned int HDB_F_DECRYPT ; 
 int SQLITE_DONE ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC12(krb5_context context, HDB *db, krb5_const_principal principal,
		      unsigned flags, krb5_kvno kvno, hdb_entry_ex *entry)
{
    int sqlite_error;
    krb5_error_code ret;
    char *principal_string;
    hdb_sqlite_db *hsdb = (hdb_sqlite_db*)(db->hdb_db);
    sqlite3_stmt *fetch = hsdb->fetch;
    krb5_data value;

    ret = FUNC6(context, principal, &principal_string);
    if (ret) {
        FUNC0(principal_string);
        return ret;
    }

    FUNC7(fetch, 1, principal_string, -1, SQLITE_STATIC);

    sqlite_error = FUNC2(context, hsdb->db, fetch);
    if (sqlite_error != SQLITE_ROW) {
        if(sqlite_error == SQLITE_DONE) {
            ret = HDB_ERR_NOENTRY;
            goto out;
        } else {
            ret = EINVAL;
            FUNC5(context, ret,
                                  "sqlite fetch failed: %d",
                                  sqlite_error);
            goto out;
        }
    }

    value.length = FUNC10(fetch, 0);
    value.data = (void *) FUNC9(fetch, 0);

    ret = FUNC4(context, &value, &entry->entry);
    if(ret)
        goto out;

    if (db->hdb_master_key_set && (flags & HDB_F_DECRYPT)) {
        ret = FUNC3(context, db, &entry->entry);
        if(ret) {
           FUNC1(context, entry);
           goto out;
        }
    }

    ret = 0;

out:

    FUNC8(fetch);
    FUNC11(fetch);

    FUNC0(principal_string);

    return ret;
}