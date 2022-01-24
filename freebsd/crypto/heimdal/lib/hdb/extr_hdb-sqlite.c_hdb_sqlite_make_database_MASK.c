#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_5__ {scalar_t__ version; int /*<<< orphan*/ * db_file; scalar_t__ db; int /*<<< orphan*/  get_version; int /*<<< orphan*/  get_all_entries; int /*<<< orphan*/  remove; int /*<<< orphan*/  update_entry; int /*<<< orphan*/  delete_aliases; int /*<<< orphan*/  add_alias; int /*<<< orphan*/  add_principal; int /*<<< orphan*/  add_entry; int /*<<< orphan*/  get_ids; int /*<<< orphan*/  fetch; } ;
typedef  TYPE_1__ hdb_sqlite_db ;
struct TYPE_6__ {scalar_t__ hdb_db; } ;
typedef  TYPE_2__ HDB ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HDBSQLITE_ADD_ALIAS ; 
 int /*<<< orphan*/  HDBSQLITE_ADD_ENTRY ; 
 int /*<<< orphan*/  HDBSQLITE_ADD_PRINCIPAL ; 
 int /*<<< orphan*/  HDBSQLITE_CREATE_TABLES ; 
 int /*<<< orphan*/  HDBSQLITE_CREATE_TRIGGERS ; 
 int /*<<< orphan*/  HDBSQLITE_DELETE_ALIASES ; 
 int /*<<< orphan*/  HDBSQLITE_FETCH ; 
 int /*<<< orphan*/  HDBSQLITE_GET_ALL_ENTRIES ; 
 int /*<<< orphan*/  HDBSQLITE_GET_IDS ; 
 int /*<<< orphan*/  HDBSQLITE_GET_VERSION ; 
 int /*<<< orphan*/  HDBSQLITE_REMOVE ; 
 int /*<<< orphan*/  HDBSQLITE_UPDATE_ENTRY ; 
 scalar_t__ HDBSQLITE_VERSION ; 
 int /*<<< orphan*/  SQLITE_OPEN_CREATE ; 
 int SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC10(krb5_context context, HDB *db, const char *filename)
{
    int ret;
    int created_file = 0;
    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;

    hsdb->db_file = FUNC8(filename);
    if(hsdb->db_file == NULL)
        return ENOMEM;

    ret = FUNC1(context, db, 0);
    if (ret) {
        ret = FUNC1(context, db, SQLITE_OPEN_CREATE);
        if (ret) goto out;

        created_file = 1;

        ret = FUNC0(context, hsdb->db,
                                   HDBSQLITE_CREATE_TABLES,
                                   EINVAL);
        if (ret) goto out;

        ret = FUNC0(context, hsdb->db,
                                   HDBSQLITE_CREATE_TRIGGERS,
                                   EINVAL);
        if (ret) goto out;
    }

    ret = FUNC2(context, hsdb->db,
                                  &hsdb->get_version,
                                  HDBSQLITE_GET_VERSION);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->fetch,
                                  HDBSQLITE_FETCH);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->get_ids,
                                  HDBSQLITE_GET_IDS);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->add_entry,
                                  HDBSQLITE_ADD_ENTRY);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->add_principal,
                                  HDBSQLITE_ADD_PRINCIPAL);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->add_alias,
                                  HDBSQLITE_ADD_ALIAS);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->delete_aliases,
                                  HDBSQLITE_DELETE_ALIASES);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->update_entry,
                                  HDBSQLITE_UPDATE_ENTRY);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->remove,
                                  HDBSQLITE_REMOVE);
    if (ret) goto out;
    ret = FUNC2(context, hsdb->db,
                                  &hsdb->get_all_entries,
                                  HDBSQLITE_GET_ALL_ENTRIES);
    if (ret) goto out;

    ret = FUNC3(context, hsdb->db, hsdb->get_version);
    if(ret == SQLITE_ROW) {
        hsdb->version = FUNC6(hsdb->get_version, 0);
    }
    FUNC7(hsdb->get_version);
    ret = 0;

    if(hsdb->version != HDBSQLITE_VERSION) {
        ret = EINVAL;
        FUNC4(context, ret, "HDBSQLITE_VERSION mismatch");
    }

    if(ret) goto out;

    return 0;

 out:
    if (hsdb->db)
        FUNC5(hsdb->db);
    if (created_file)
        FUNC9(hsdb->db_file);

    return ret;
}