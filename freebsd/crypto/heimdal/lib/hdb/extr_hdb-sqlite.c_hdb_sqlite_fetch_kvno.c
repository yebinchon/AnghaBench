
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int krb5_kvno ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_10__ {void* data; int length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_const_principal ;
struct TYPE_11__ {int db; int * fetch; } ;
typedef TYPE_2__ hdb_sqlite_db ;
struct TYPE_12__ {int entry; } ;
typedef TYPE_3__ hdb_entry_ex ;
struct TYPE_13__ {scalar_t__ hdb_master_key_set; scalar_t__ hdb_db; } ;
typedef TYPE_4__ HDB ;


 scalar_t__ EINVAL ;
 scalar_t__ HDB_ERR_NOENTRY ;
 unsigned int HDB_F_DECRYPT ;
 int SQLITE_DONE ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int free (char*) ;
 int hdb_free_entry (int ,TYPE_3__*) ;
 int hdb_sqlite_step (int ,int ,int *) ;
 scalar_t__ hdb_unseal_keys (int ,TYPE_4__*,int *) ;
 scalar_t__ hdb_value2entry (int ,TYPE_1__*,int *) ;
 int krb5_set_error_message (int ,scalar_t__,char*,int) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int sqlite3_bind_text (int *,int,char*,int,int ) ;
 int sqlite3_clear_bindings (int *) ;
 scalar_t__ sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_reset (int *) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_fetch_kvno(krb5_context context, HDB *db, krb5_const_principal principal,
        unsigned flags, krb5_kvno kvno, hdb_entry_ex *entry)
{
    int sqlite_error;
    krb5_error_code ret;
    char *principal_string;
    hdb_sqlite_db *hsdb = (hdb_sqlite_db*)(db->hdb_db);
    sqlite3_stmt *fetch = hsdb->fetch;
    krb5_data value;

    ret = krb5_unparse_name(context, principal, &principal_string);
    if (ret) {
        free(principal_string);
        return ret;
    }

    sqlite3_bind_text(fetch, 1, principal_string, -1, SQLITE_STATIC);

    sqlite_error = hdb_sqlite_step(context, hsdb->db, fetch);
    if (sqlite_error != SQLITE_ROW) {
        if(sqlite_error == SQLITE_DONE) {
            ret = HDB_ERR_NOENTRY;
            goto out;
        } else {
            ret = EINVAL;
            krb5_set_error_message(context, ret,
                                  "sqlite fetch failed: %d",
                                  sqlite_error);
            goto out;
        }
    }

    value.length = sqlite3_column_bytes(fetch, 0);
    value.data = (void *) sqlite3_column_blob(fetch, 0);

    ret = hdb_value2entry(context, &value, &entry->entry);
    if(ret)
        goto out;

    if (db->hdb_master_key_set && (flags & HDB_F_DECRYPT)) {
        ret = hdb_unseal_keys(context, db, &entry->entry);
        if(ret) {
           hdb_free_entry(context, entry);
           goto out;
        }
    }

    ret = 0;

out:

    sqlite3_clear_bindings(fetch);
    sqlite3_reset(fetch);

    free(principal_string);

    return ret;
}
