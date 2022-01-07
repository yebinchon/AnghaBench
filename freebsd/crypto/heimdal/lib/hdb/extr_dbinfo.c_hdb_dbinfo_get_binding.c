
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_dbinfo {int const* binding; } ;
typedef int krb5_context ;
typedef int krb5_config_binding ;



const krb5_config_binding *
hdb_dbinfo_get_binding(krb5_context context, struct hdb_dbinfo *dbp)
{
    return dbp->binding;
}
