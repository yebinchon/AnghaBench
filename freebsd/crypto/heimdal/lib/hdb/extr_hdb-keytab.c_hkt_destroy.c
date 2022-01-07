
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* hdb_keytab ;
struct TYPE_6__ {struct TYPE_6__* hdb_name; struct TYPE_6__* path; int hdb_db; } ;
typedef TYPE_1__ HDB ;


 int free (TYPE_1__*) ;
 int hdb_clear_master_key (int ,TYPE_1__*) ;

__attribute__((used)) static krb5_error_code
hkt_destroy(krb5_context context, HDB *db)
{
    hdb_keytab k = (hdb_keytab)db->hdb_db;
    krb5_error_code ret;

    ret = hdb_clear_master_key (context, db);

    free(k->path);
    free(k);

    free(db->hdb_name);
    free(db);
    return ret;
}
