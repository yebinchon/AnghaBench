
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct _krb5_key_data {TYPE_6__* key; int * schedule; } ;
struct _krb5_encryption_type {TYPE_2__* keytype; } ;
struct TYPE_11__ {int length; int data; } ;
struct TYPE_13__ {TYPE_1__ saltvalue; } ;
typedef TYPE_3__ krb5_salt ;
typedef int krb5_keyblock ;
typedef int krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_14__ {int length; int data; } ;
typedef TYPE_4__ krb5_data ;
typedef int krb5_context ;
struct TYPE_15__ {int data; } ;
struct TYPE_16__ {TYPE_5__ keyvalue; int keytype; } ;
struct TYPE_12__ {int size; } ;


 int ALLOC (TYPE_6__*,int) ;
 int ENOMEM ;
 int KRB5_PROG_KEYTYPE_NOSUPP ;
 char* N_ (char*,char*) ;
 int PKCS5_PBKDF2_HMAC_SHA1 (int ,int,int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ _krb5_AES_string_to_default_iterator ;
 int _krb5_derive_key (int ,struct _krb5_encryption_type*,struct _krb5_key_data*,char*,int ) ;
 struct _krb5_encryption_type* _krb5_find_enctype (int ) ;
 int _krb5_free_key_data (int ,struct _krb5_key_data*,struct _krb5_encryption_type*) ;
 int _krb5_get_int (int ,unsigned long*,int) ;
 int krb5_copy_keyblock_contents (int ,TYPE_6__*,int *) ;
 int krb5_data_alloc (TYPE_5__*,int ) ;
 int krb5_set_error_message (int ,int,char*) ;
 int strlen (char*) ;

__attribute__((used)) static krb5_error_code
AES_string_to_key(krb5_context context,
    krb5_enctype enctype,
    krb5_data password,
    krb5_salt salt,
    krb5_data opaque,
    krb5_keyblock *key)
{
    krb5_error_code ret;
    uint32_t iter;
    struct _krb5_encryption_type *et;
    struct _krb5_key_data kd;

    if (opaque.length == 0)
 iter = _krb5_AES_string_to_default_iterator;
    else if (opaque.length == 4) {
 unsigned long v;
 _krb5_get_int(opaque.data, &v, 4);
 iter = ((uint32_t)v);
    } else
 return KRB5_PROG_KEYTYPE_NOSUPP;

    et = _krb5_find_enctype(enctype);
    if (et == ((void*)0))
 return KRB5_PROG_KEYTYPE_NOSUPP;

    kd.schedule = ((void*)0);
    ALLOC(kd.key, 1);
    if(kd.key == ((void*)0)) {
 krb5_set_error_message (context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    kd.key->keytype = enctype;
    ret = krb5_data_alloc(&kd.key->keyvalue, et->keytype->size);
    if (ret) {
 krb5_set_error_message (context, ret, N_("malloc: out of memory", ""));
 return ret;
    }

    ret = PKCS5_PBKDF2_HMAC_SHA1(password.data, password.length,
     salt.saltvalue.data, salt.saltvalue.length,
     iter,
     et->keytype->size, kd.key->keyvalue.data);
    if (ret != 1) {
 _krb5_free_key_data(context, &kd, et);
 krb5_set_error_message(context, KRB5_PROG_KEYTYPE_NOSUPP,
          "Error calculating s2k");
 return KRB5_PROG_KEYTYPE_NOSUPP;
    }

    ret = _krb5_derive_key(context, et, &kd, "kerberos", strlen("kerberos"));
    if (ret == 0)
 ret = krb5_copy_keyblock_contents(context, kd.key, key);
    _krb5_free_key_data(context, &kd, et);

    return ret;
}
