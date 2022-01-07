
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int krb5_error_code ;
struct TYPE_9__ {void* data; int length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
struct TYPE_10__ {int get_all_entries; int db; } ;
typedef TYPE_2__ hdb_sqlite_db ;
struct TYPE_11__ {int entry; } ;
typedef TYPE_3__ hdb_entry_ex ;
struct TYPE_12__ {scalar_t__ hdb_db; } ;
typedef TYPE_4__ HDB ;


 int EINVAL ;
 int HDB_ERR_NOENTRY ;
 int SQLITE_DONE ;
 int SQLITE_ROW ;
 int hdb_sqlite_step (int ,int ,int ) ;
 int hdb_value2entry (int ,TYPE_1__*,int *) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ sqlite3_column_blob (int ,int ) ;
 int sqlite3_column_bytes (int ,int ) ;
 int sqlite3_reset (int ) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_nextkey(krb5_context context, HDB *db, unsigned flags,
                   hdb_entry_ex *entry)
{
    krb5_error_code ret = 0;
    int sqlite_error;
    krb5_data value;

    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;

    sqlite_error = hdb_sqlite_step(context, hsdb->db, hsdb->get_all_entries);
    if(sqlite_error == SQLITE_ROW) {

        value.length = sqlite3_column_bytes(hsdb->get_all_entries, 0);
        value.data = (void *) sqlite3_column_blob(hsdb->get_all_entries, 0);
        memset(entry, 0, sizeof(*entry));
        ret = hdb_value2entry(context, &value, &entry->entry);
    }
    else if(sqlite_error == SQLITE_DONE) {

        ret = HDB_ERR_NOENTRY;
        sqlite3_reset(hsdb->get_all_entries);
    }
    else {

        ret = EINVAL;
    }

    return ret;
}
