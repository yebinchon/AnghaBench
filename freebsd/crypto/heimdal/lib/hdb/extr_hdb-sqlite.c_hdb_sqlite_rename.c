
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_6__ {int db_file; } ;
typedef TYPE_1__ hdb_sqlite_db ;
struct TYPE_7__ {scalar_t__ hdb_db; } ;
typedef TYPE_2__ HDB ;


 int free (int ) ;
 int hdb_sqlite_close_database (int ,TYPE_2__*) ;
 int hdb_sqlite_make_database (int ,TYPE_2__*,char const*) ;
 int krb5_warnx (int ,char*) ;
 int rename (int ,char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_rename(krb5_context context, HDB *db, const char *new_name)
{
    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;
    int ret;

    krb5_warnx(context, "hdb_sqlite_rename");

    if (strncasecmp(new_name, "sqlite:", 7) == 0)
 new_name += 7;

    hdb_sqlite_close_database(context, db);

    ret = rename(hsdb->db_file, new_name);
    free(hsdb->db_file);

    hdb_sqlite_make_database(context, db, new_name);

    return ret;
}
