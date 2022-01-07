
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int hdb_entry_ex ;
typedef int HDB ;


 int HDB_ERR_DB_INUSE ;

__attribute__((used)) static krb5_error_code
hkt_firstkey(krb5_context context, HDB *db,
      unsigned flags, hdb_entry_ex *entry)
{
    return HDB_ERR_DB_INUSE;
}
