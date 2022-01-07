
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _krb5_key_data {int key; } ;
typedef int local_key ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int checksum; int cksumtype; } ;
typedef TYPE_1__ Checksum ;


 int CKSUMTYPE_HMAC_MD5 ;
 scalar_t__ _krb5_HMAC_MD5_checksum (int ,struct _krb5_key_data*,void const*,size_t,unsigned int,TYPE_1__*) ;
 scalar_t__ krb5_copy_keyblock (int ,int const*,int *) ;
 scalar_t__ krb5_data_alloc (int *,int) ;
 int krb5_data_free (int *) ;
 int krb5_free_keyblock (int ,int ) ;
 int memset (struct _krb5_key_data*,int ,int) ;

__attribute__((used)) static krb5_error_code
HMAC_MD5_any_checksum(krb5_context context,
        const krb5_keyblock *key,
        const void *data,
        size_t len,
        unsigned usage,
        Checksum *result)
{
    struct _krb5_key_data local_key;
    krb5_error_code ret;

    memset(&local_key, 0, sizeof(local_key));

    ret = krb5_copy_keyblock(context, key, &local_key.key);
    if (ret)
 return ret;

    ret = krb5_data_alloc (&result->checksum, 16);
    if (ret) {
 krb5_free_keyblock(context, local_key.key);
 return ret;
    }

    result->cksumtype = CKSUMTYPE_HMAC_MD5;
    ret = _krb5_HMAC_MD5_checksum(context, &local_key, data, len, usage, result);
    if (ret)
 krb5_data_free(&result->checksum);

    krb5_free_keyblock(context, local_key.key);
    return ret;
}
