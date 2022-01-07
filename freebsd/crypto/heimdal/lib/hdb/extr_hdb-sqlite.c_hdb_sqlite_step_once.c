
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ hdb_sqlite_db ;
struct TYPE_5__ {scalar_t__ hdb_db; } ;
typedef TYPE_2__ HDB ;


 int hdb_sqlite_step (int ,int ,int *) ;
 int sqlite3_clear_bindings (int *) ;
 int sqlite3_reset (int *) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_step_once(krb5_context context, HDB *db, sqlite3_stmt *statement)
{
    int ret;
    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;

    ret = hdb_sqlite_step(context, hsdb->db, statement);
    sqlite3_clear_bindings(statement);
    sqlite3_reset(statement);

    return ret;
}
