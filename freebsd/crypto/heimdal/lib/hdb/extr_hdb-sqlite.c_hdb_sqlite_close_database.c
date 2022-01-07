
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int db; int get_all_entries; int remove; int update_entry; int delete_aliases; int add_alias; int add_principal; int add_entry; int get_ids; int fetch; int get_version; } ;
typedef TYPE_1__ hdb_sqlite_db ;
struct TYPE_5__ {scalar_t__ hdb_db; } ;
typedef TYPE_2__ HDB ;


 int sqlite3_close (int ) ;
 int sqlite3_finalize (int ) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_close_database(krb5_context context, HDB *db)
{
    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;

    sqlite3_finalize(hsdb->get_version);
    sqlite3_finalize(hsdb->fetch);
    sqlite3_finalize(hsdb->get_ids);
    sqlite3_finalize(hsdb->add_entry);
    sqlite3_finalize(hsdb->add_principal);
    sqlite3_finalize(hsdb->add_alias);
    sqlite3_finalize(hsdb->delete_aliases);
    sqlite3_finalize(hsdb->update_entry);
    sqlite3_finalize(hsdb->remove);
    sqlite3_finalize(hsdb->get_all_entries);

    sqlite3_close(hsdb->db);

    return 0;
}
