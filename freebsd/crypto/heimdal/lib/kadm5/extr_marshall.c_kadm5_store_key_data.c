
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_storage ;
struct TYPE_5__ {int * key_data_contents; int * key_data_length; int * key_data_type; int key_data_kvno; int key_data_ver; } ;
typedef TYPE_1__ krb5_key_data ;
struct TYPE_6__ {int data; int length; } ;
typedef TYPE_2__ krb5_data ;
typedef int kadm5_ret_t ;


 int krb5_store_data (int *,TYPE_2__) ;
 int krb5_store_int32 (int *,int ) ;

kadm5_ret_t
kadm5_store_key_data(krb5_storage *sp,
       krb5_key_data *key)
{
    krb5_data c;
    krb5_store_int32(sp, key->key_data_ver);
    krb5_store_int32(sp, key->key_data_kvno);
    krb5_store_int32(sp, key->key_data_type[0]);
    c.length = key->key_data_length[0];
    c.data = key->key_data_contents[0];
    krb5_store_data(sp, c);
    krb5_store_int32(sp, key->key_data_type[1]);
    c.length = key->key_data_length[1];
    c.data = key->key_data_contents[1];
    krb5_store_data(sp, c);
    return 0;
}
