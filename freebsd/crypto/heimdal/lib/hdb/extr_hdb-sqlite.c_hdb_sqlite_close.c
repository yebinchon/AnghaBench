
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int HDB ;



__attribute__((used)) static krb5_error_code
hdb_sqlite_close(krb5_context context, HDB *db)
{
    return 0;
}
