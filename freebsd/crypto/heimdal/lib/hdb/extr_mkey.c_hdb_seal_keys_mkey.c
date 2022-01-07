
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int hdb_master_key ;
struct TYPE_4__ {size_t len; int * val; } ;
struct TYPE_5__ {TYPE_1__ keys; } ;
typedef TYPE_2__ hdb_entry ;


 scalar_t__ hdb_seal_key_mkey (int ,int *,int ) ;

krb5_error_code
hdb_seal_keys_mkey(krb5_context context, hdb_entry *ent, hdb_master_key mkey)
{
    size_t i;
    for(i = 0; i < ent->keys.len; i++){
 krb5_error_code ret;

 ret = hdb_seal_key_mkey(context, &ent->keys.val[i], mkey);
 if (ret)
     return ret;
    }
    return 0;
}
