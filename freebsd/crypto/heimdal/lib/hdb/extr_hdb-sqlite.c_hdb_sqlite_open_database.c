
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int * db; int db_file; } ;
typedef TYPE_1__ hdb_sqlite_db ;
struct TYPE_5__ {scalar_t__ hdb_db; } ;
typedef TYPE_2__ HDB ;


 int ENOENT ;
 int SQLITE_OPEN_READWRITE ;
 int krb5_enomem (int ) ;
 int krb5_set_error_message (int ,int,char*,int ,int ) ;
 int sqlite3_close (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_open_v2 (int ,int **,int,int *) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_open_database(krb5_context context, HDB *db, int flags)
{
    int ret;
    hdb_sqlite_db *hsdb = (hdb_sqlite_db*) db->hdb_db;

    ret = sqlite3_open_v2(hsdb->db_file, &hsdb->db,
                          SQLITE_OPEN_READWRITE | flags, ((void*)0));

    if (ret) {
        if (hsdb->db) {
     ret = ENOENT;
            krb5_set_error_message(context, ret,
                                  "Error opening sqlite database %s: %s",
                                  hsdb->db_file, sqlite3_errmsg(hsdb->db));
            sqlite3_close(hsdb->db);
            hsdb->db = ((void*)0);
        } else
     ret = krb5_enomem(context);
        return ret;
    }

    return 0;
}
