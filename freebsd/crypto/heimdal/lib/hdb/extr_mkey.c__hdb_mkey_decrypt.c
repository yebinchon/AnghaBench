
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_key_usage ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef TYPE_1__* hdb_master_key ;
struct TYPE_3__ {int crypto; } ;


 int krb5_decrypt (int ,int ,int ,void*,size_t,int *) ;

int
_hdb_mkey_decrypt(krb5_context context, hdb_master_key key,
    krb5_key_usage usage,
    void *ptr, size_t size, krb5_data *res)
{
    return krb5_decrypt(context, key->crypto, usage,
   ptr, size, res);
}
