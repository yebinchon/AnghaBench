#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int krb5_error_code ;
struct TYPE_19__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_20__ {int /*<<< orphan*/  db; int /*<<< orphan*/ * add_alias; int /*<<< orphan*/ * update_entry; int /*<<< orphan*/ * delete_aliases; int /*<<< orphan*/ * add_principal; int /*<<< orphan*/ * add_entry; int /*<<< orphan*/ * get_ids; } ;
typedef  TYPE_3__ hdb_sqlite_db ;
struct TYPE_17__ {int /*<<< orphan*/ * principal; } ;
struct TYPE_21__ {TYPE_12__ entry; } ;
typedef  TYPE_4__ hdb_entry_ex ;
struct TYPE_23__ {scalar_t__ hdb_db; } ;
struct TYPE_18__ {int len; int /*<<< orphan*/ * val; } ;
struct TYPE_22__ {TYPE_1__ aliases; } ;
typedef  TYPE_5__ HDB_Ext_Aliases ;
typedef  TYPE_6__ HDB ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int HDB_F_REPLACE ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_12__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_12__*,TYPE_5__ const**) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_6__*,TYPE_12__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC18(krb5_context context, HDB *db, unsigned flags,
                 hdb_entry_ex *entry)
{
    int ret;
    int i;
    sqlite_int64 entry_id;
    char *principal_string = NULL;
    char *alias_string;
    const HDB_Ext_Aliases *aliases;

    hdb_sqlite_db *hsdb = (hdb_sqlite_db *)(db->hdb_db);
    krb5_data value;
    sqlite3_stmt *get_ids = hsdb->get_ids;

    ret = FUNC4(context, hsdb->db,
                               "BEGIN IMMEDIATE TRANSACTION", EINVAL);
    if(ret != SQLITE_OK) {
	ret = EINVAL;
        FUNC8(context, ret,
			       "SQLite BEGIN TRANSACTION failed: %s",
			       FUNC16(hsdb->db));
        goto rollback;
    }

    ret = FUNC9(context,
                            entry->entry.principal, &principal_string);
    if (ret) {
        goto rollback;
    }

    ret = FUNC3(context, db, &entry->entry);
    if(ret) {
        goto rollback;
    }

    ret = FUNC1(context, &entry->entry, &value);
    if(ret) {
        goto rollback;
    }

    FUNC13(get_ids, 1, principal_string, -1, SQLITE_STATIC);
    ret = FUNC5(context, hsdb->db, get_ids);

    if(ret == SQLITE_DONE) { /* No such principal */

        FUNC11(hsdb->add_entry, 1,
                          value.data, value.length, SQLITE_STATIC);
        ret = FUNC5(context, hsdb->db, hsdb->add_entry);
        FUNC14(hsdb->add_entry);
        FUNC17(hsdb->add_entry);
        if(ret != SQLITE_DONE)
            goto rollback;

        FUNC13(hsdb->add_principal, 1,
                          principal_string, -1, SQLITE_STATIC);
        ret = FUNC5(context, hsdb->db, hsdb->add_principal);
        FUNC14(hsdb->add_principal);
        FUNC17(hsdb->add_principal);
        if(ret != SQLITE_DONE)
            goto rollback;

        entry_id = FUNC15(get_ids, 1);

    } else if(ret == SQLITE_ROW) { /* Found a principal */

        if(! (flags & HDB_F_REPLACE)) /* Not allowed to replace it */
            goto rollback;

        entry_id = FUNC15(get_ids, 1);

        FUNC12(hsdb->delete_aliases, 1, entry_id);
        ret = FUNC6(context, db, hsdb->delete_aliases);
        if(ret != SQLITE_DONE)
            goto rollback;

        FUNC11(hsdb->update_entry, 1,
                          value.data, value.length, SQLITE_STATIC);
        FUNC12(hsdb->update_entry, 2, entry_id);
        ret = FUNC6(context, db, hsdb->update_entry);
        if(ret != SQLITE_DONE)
            goto rollback;

    } else {
	/* Error! */
        goto rollback;
    }

    ret = FUNC2(&entry->entry, &aliases);
    if(ret || aliases == NULL)
        goto commit;

    for(i = 0; i < aliases->aliases.len; i++) {

        ret = FUNC9(context, &aliases->aliases.val[i],
				&alias_string);
        if (ret) {
            FUNC0(alias_string);
            goto rollback;
        }

        FUNC13(hsdb->add_alias, 1, alias_string,
                          -1, SQLITE_STATIC);
        FUNC12(hsdb->add_alias, 2, entry_id);
        ret = FUNC6(context, db, hsdb->add_alias);

        FUNC0(alias_string);

        if(ret != SQLITE_DONE)
            goto rollback;
    }

    ret = 0;

commit:

    FUNC0(principal_string);

    FUNC7(&value);

    FUNC14(get_ids);
    FUNC17(get_ids);

    ret = FUNC4(context, hsdb->db, "COMMIT", EINVAL);
    if(ret != SQLITE_OK)
	FUNC10(context, "hdb-sqlite: COMMIT problem: %d: %s",
		   ret, FUNC16(hsdb->db));

    return ret;

rollback:

    FUNC10(context, "hdb-sqlite: store rollback problem: %d: %s",
	       ret, FUNC16(hsdb->db));

    FUNC0(principal_string);

    ret = FUNC4(context, hsdb->db,
                               "ROLLBACK", EINVAL);
    return ret;
}