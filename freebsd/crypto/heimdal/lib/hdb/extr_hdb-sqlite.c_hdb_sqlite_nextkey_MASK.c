#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_error_code ;
struct TYPE_9__ {void* data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_10__ {int /*<<< orphan*/  get_all_entries; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ hdb_sqlite_db ;
struct TYPE_11__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_3__ hdb_entry_ex ;
struct TYPE_12__ {scalar_t__ hdb_db; } ;
typedef  TYPE_4__ HDB ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  HDB_ERR_NOENTRY ; 
 int SQLITE_DONE ; 
 int SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context, HDB *db, unsigned flags,
                   hdb_entry_ex *entry)
{
    krb5_error_code ret = 0;
    int sqlite_error;
    krb5_data value;

    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;

    sqlite_error = FUNC0(context, hsdb->db, hsdb->get_all_entries);
    if(sqlite_error == SQLITE_ROW) {
	/* Found an entry */
        value.length = FUNC4(hsdb->get_all_entries, 0);
        value.data = (void *) FUNC3(hsdb->get_all_entries, 0);
        FUNC2(entry, 0, sizeof(*entry));
        ret = FUNC1(context, &value, &entry->entry);
    }
    else if(sqlite_error == SQLITE_DONE) {
	/* No more entries */
        ret = HDB_ERR_NOENTRY;
        FUNC5(hsdb->get_all_entries);
    }
    else {
	/* XXX SQLite error. Should be handled in some way. */
        ret = EINVAL;
    }

    return ret;
}