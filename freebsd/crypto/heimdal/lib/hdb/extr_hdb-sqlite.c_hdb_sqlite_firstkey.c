
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_5__ {int get_all_entries; } ;
typedef TYPE_1__ hdb_sqlite_db ;
typedef int hdb_entry_ex ;
struct TYPE_6__ {scalar_t__ hdb_db; } ;
typedef TYPE_2__ HDB ;


 scalar_t__ hdb_sqlite_nextkey (int ,TYPE_2__*,unsigned int,int *) ;
 int sqlite3_reset (int ) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_firstkey(krb5_context context, HDB *db, unsigned flags,
                    hdb_entry_ex *entry)
{
    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;
    krb5_error_code ret;

    sqlite3_reset(hsdb->get_all_entries);

    ret = hdb_sqlite_nextkey(context, db, flags, entry);
    if(ret)
        return ret;

    return 0;
}
