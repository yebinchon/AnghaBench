
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
struct TYPE_8__ {size_t length; int * data; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
typedef int * hdb_master_key ;
struct TYPE_7__ {TYPE_2__ keyvalue; int keytype; } ;
struct TYPE_9__ {int * mkvno; TYPE_1__ key; } ;
typedef TYPE_3__ Key ;


 scalar_t__ HDB_ERR_NO_MKEY ;
 int HDB_KU_MKEY ;
 scalar_t__ KRB5KRB_AP_ERR_BAD_INTEGRITY ;
 scalar_t__ KRB5_BAD_KEYSIZE ;
 int * _hdb_find_master_key (int *,int *) ;
 scalar_t__ _hdb_mkey_decrypt (int ,int *,int ,int *,size_t,TYPE_2__*) ;
 int free (int *) ;
 int krb5_data_free (TYPE_2__*) ;
 scalar_t__ krb5_enctype_keysize (int ,int ,size_t*) ;
 int memset (int *,int ,size_t) ;

krb5_error_code
hdb_unseal_key_mkey(krb5_context context, Key *k, hdb_master_key mkey)
{

    krb5_error_code ret;
    krb5_data res;
    size_t keysize;

    hdb_master_key key;

    if(k->mkvno == ((void*)0))
 return 0;

    key = _hdb_find_master_key(k->mkvno, mkey);

    if (key == ((void*)0))
 return HDB_ERR_NO_MKEY;

    ret = _hdb_mkey_decrypt(context, key, HDB_KU_MKEY,
       k->key.keyvalue.data,
       k->key.keyvalue.length,
       &res);
    if(ret == KRB5KRB_AP_ERR_BAD_INTEGRITY) {

 ret = _hdb_mkey_decrypt(context, key, 0,
    k->key.keyvalue.data,
    k->key.keyvalue.length,
    &res);
    }
    if (ret)
 return ret;


    ret = krb5_enctype_keysize(context, k->key.keytype, &keysize);
    if (ret) {
 krb5_data_free(&res);
 return ret;
    }
    if (keysize > res.length) {
 krb5_data_free(&res);
 return KRB5_BAD_KEYSIZE;
    }

    memset(k->key.keyvalue.data, 0, k->key.keyvalue.length);
    free(k->key.keyvalue.data);
    k->key.keyvalue = res;
    k->key.keyvalue.length = keysize;
    free(k->mkvno);
    k->mkvno = ((void*)0);

    return 0;
}
