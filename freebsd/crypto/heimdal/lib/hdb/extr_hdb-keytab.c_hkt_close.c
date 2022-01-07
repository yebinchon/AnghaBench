
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* hdb_keytab ;
struct TYPE_5__ {int hdb_db; } ;
struct TYPE_4__ {int * keytab; } ;
typedef TYPE_2__ HDB ;


 int assert (int *) ;
 int krb5_kt_close (int ,int *) ;

__attribute__((used)) static krb5_error_code
hkt_close(krb5_context context, HDB *db)
{
    hdb_keytab k = (hdb_keytab)db->hdb_db;
    krb5_error_code ret;

    assert(k->keytab);

    ret = krb5_kt_close(context, k->keytab);
    k->keytab = ((void*)0);

    return ret;
}
