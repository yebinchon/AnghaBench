
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_5__ {scalar_t__ version; int * db_file; scalar_t__ db; int get_version; int get_all_entries; int remove; int update_entry; int delete_aliases; int add_alias; int add_principal; int add_entry; int get_ids; int fetch; } ;
typedef TYPE_1__ hdb_sqlite_db ;
struct TYPE_6__ {scalar_t__ hdb_db; } ;
typedef TYPE_2__ HDB ;


 int EINVAL ;
 int ENOMEM ;
 int HDBSQLITE_ADD_ALIAS ;
 int HDBSQLITE_ADD_ENTRY ;
 int HDBSQLITE_ADD_PRINCIPAL ;
 int HDBSQLITE_CREATE_TABLES ;
 int HDBSQLITE_CREATE_TRIGGERS ;
 int HDBSQLITE_DELETE_ALIASES ;
 int HDBSQLITE_FETCH ;
 int HDBSQLITE_GET_ALL_ENTRIES ;
 int HDBSQLITE_GET_IDS ;
 int HDBSQLITE_GET_VERSION ;
 int HDBSQLITE_REMOVE ;
 int HDBSQLITE_UPDATE_ENTRY ;
 scalar_t__ HDBSQLITE_VERSION ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_ROW ;
 int hdb_sqlite_exec_stmt (int ,scalar_t__,int ,int) ;
 int hdb_sqlite_open_database (int ,TYPE_2__*,int ) ;
 int hdb_sqlite_prepare_stmt (int ,scalar_t__,int *,int ) ;
 int hdb_sqlite_step (int ,scalar_t__,int ) ;
 int krb5_set_error_message (int ,int,char*) ;
 int sqlite3_close (scalar_t__) ;
 scalar_t__ sqlite3_column_double (int ,int ) ;
 int sqlite3_reset (int ) ;
 int * strdup (char const*) ;
 int unlink (int *) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_make_database(krb5_context context, HDB *db, const char *filename)
{
    int ret;
    int created_file = 0;
    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;

    hsdb->db_file = strdup(filename);
    if(hsdb->db_file == ((void*)0))
        return ENOMEM;

    ret = hdb_sqlite_open_database(context, db, 0);
    if (ret) {
        ret = hdb_sqlite_open_database(context, db, SQLITE_OPEN_CREATE);
        if (ret) goto out;

        created_file = 1;

        ret = hdb_sqlite_exec_stmt(context, hsdb->db,
                                   HDBSQLITE_CREATE_TABLES,
                                   EINVAL);
        if (ret) goto out;

        ret = hdb_sqlite_exec_stmt(context, hsdb->db,
                                   HDBSQLITE_CREATE_TRIGGERS,
                                   EINVAL);
        if (ret) goto out;
    }

    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->get_version,
                                  HDBSQLITE_GET_VERSION);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->fetch,
                                  HDBSQLITE_FETCH);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->get_ids,
                                  HDBSQLITE_GET_IDS);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->add_entry,
                                  HDBSQLITE_ADD_ENTRY);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->add_principal,
                                  HDBSQLITE_ADD_PRINCIPAL);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->add_alias,
                                  HDBSQLITE_ADD_ALIAS);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->delete_aliases,
                                  HDBSQLITE_DELETE_ALIASES);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->update_entry,
                                  HDBSQLITE_UPDATE_ENTRY);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->remove,
                                  HDBSQLITE_REMOVE);
    if (ret) goto out;
    ret = hdb_sqlite_prepare_stmt(context, hsdb->db,
                                  &hsdb->get_all_entries,
                                  HDBSQLITE_GET_ALL_ENTRIES);
    if (ret) goto out;

    ret = hdb_sqlite_step(context, hsdb->db, hsdb->get_version);
    if(ret == SQLITE_ROW) {
        hsdb->version = sqlite3_column_double(hsdb->get_version, 0);
    }
    sqlite3_reset(hsdb->get_version);
    ret = 0;

    if(hsdb->version != HDBSQLITE_VERSION) {
        ret = EINVAL;
        krb5_set_error_message(context, ret, "HDBSQLITE_VERSION mismatch");
    }

    if(ret) goto out;

    return 0;

 out:
    if (hsdb->db)
        sqlite3_close(hsdb->db);
    if (created_file)
        unlink(hsdb->db_file);

    return ret;
}
