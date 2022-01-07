
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_3__ {scalar_t__ hdb_master_key_set; int hdb_master_key; } ;
typedef int Key ;
typedef TYPE_1__ HDB ;


 int hdb_seal_key_mkey (int ,int *,int ) ;

krb5_error_code
hdb_seal_key(krb5_context context, HDB *db, Key *k)
{
    if (db->hdb_master_key_set == 0)
 return 0;

    return hdb_seal_key_mkey(context, k, db->hdb_master_key);
}
