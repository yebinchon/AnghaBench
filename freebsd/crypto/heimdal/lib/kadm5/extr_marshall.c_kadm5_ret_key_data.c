
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_storage ;
struct TYPE_5__ {int * key_data_contents; int * key_data_length; void** key_data_type; void* key_data_kvno; void* key_data_ver; } ;
typedef TYPE_1__ krb5_key_data ;
struct TYPE_6__ {int data; int length; } ;
typedef TYPE_2__ krb5_data ;
typedef int kadm5_ret_t ;
typedef void* int32_t ;


 int krb5_ret_data (int *,TYPE_2__*) ;
 int krb5_ret_int32 (int *,void**) ;

kadm5_ret_t
kadm5_ret_key_data(krb5_storage *sp,
     krb5_key_data *key)
{
    krb5_data c;
    int32_t tmp;
    krb5_ret_int32(sp, &tmp);
    key->key_data_ver = tmp;
    krb5_ret_int32(sp, &tmp);
    key->key_data_kvno = tmp;
    krb5_ret_int32(sp, &tmp);
    key->key_data_type[0] = tmp;
    krb5_ret_data(sp, &c);
    key->key_data_length[0] = c.length;
    key->key_data_contents[0] = c.data;
    krb5_ret_int32(sp, &tmp);
    key->key_data_type[1] = tmp;
    krb5_ret_data(sp, &c);
    key->key_data_length[1] = c.length;
    key->key_data_contents[1] = c.data;
    return 0;
}
