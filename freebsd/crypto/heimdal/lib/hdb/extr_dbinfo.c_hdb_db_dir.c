
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 char const* HDB_DB_DIR ;

const char *
hdb_db_dir(krb5_context context)
{
    return HDB_DB_DIR;
}
