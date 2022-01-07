
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_7__ {TYPE_2__* db_file; } ;
typedef TYPE_1__ hdb_sqlite_db ;
struct TYPE_8__ {struct TYPE_8__* hdb_db; } ;
typedef TYPE_2__ HDB ;


 int free (TYPE_2__*) ;
 int hdb_clear_master_key (int ,TYPE_2__*) ;
 int hdb_sqlite_close_database (int ,TYPE_2__*) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_destroy(krb5_context context, HDB *db)
{
    int ret;
    hdb_sqlite_db *hsdb;

    ret = hdb_clear_master_key(context, db);

    hdb_sqlite_close_database(context, db);

    hsdb = (hdb_sqlite_db*)(db->hdb_db);

    free(hsdb->db_file);
    free(db->hdb_db);
    free(db);

    return ret;
}
