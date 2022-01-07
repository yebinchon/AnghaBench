
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int hdb_entry ;
struct TYPE_3__ {scalar_t__ hdb_master_key_set; int hdb_master_key; } ;
typedef TYPE_1__ HDB ;


 int hdb_unseal_keys_mkey (int ,int *,int ) ;

krb5_error_code
hdb_unseal_keys(krb5_context context, HDB *db, hdb_entry *ent)
{
    if (db->hdb_master_key_set == 0)
 return 0;
    return hdb_unseal_keys_mkey(context, ent, db->hdb_master_key);
}
