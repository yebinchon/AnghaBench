
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int HDB ;


 int HDB_ERR_CANT_LOCK_DB ;
 int krb5_set_error_message (int ,int ,char*) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_lock(krb5_context context, HDB *db, int operation)
{
    krb5_set_error_message(context, HDB_ERR_CANT_LOCK_DB,
      "lock not implemented");
    return HDB_ERR_CANT_LOCK_DB;
}
