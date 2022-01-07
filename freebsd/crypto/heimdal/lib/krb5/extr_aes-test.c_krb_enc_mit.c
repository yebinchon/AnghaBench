
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef int krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_9__ {scalar_t__ length; int data; } ;
struct TYPE_8__ {TYPE_2__ ciphertext; int enctype; scalar_t__ kvno; } ;
typedef TYPE_1__ krb5_enc_data ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;


 int EINVAL ;
 int krb5_c_decrypt (int ,int ,unsigned int,int *,TYPE_1__*,TYPE_2__*) ;
 int krb5_c_encrypt_length (int ,int ,scalar_t__,size_t*) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_warnx (int ,char*,...) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
krb_enc_mit(krb5_context context,
     krb5_enctype enctype,
     krb5_keyblock *key,
     unsigned usage,
     krb5_data *cipher,
     krb5_data *clear)
{

    krb5_error_code ret;
    krb5_enc_data e;
    krb5_data decrypt;
    size_t len;

    e.kvno = 0;
    e.enctype = enctype;
    e.ciphertext = *cipher;

    ret = krb5_c_decrypt(context, *key, usage, ((void*)0), &e, &decrypt);
    if (ret)
 return ret;

    if (decrypt.length != clear->length ||
 memcmp(decrypt.data, clear->data, decrypt.length) != 0) {
 krb5_warnx(context, "clear text not same");
 return EINVAL;
    }

    krb5_data_free(&decrypt);

    ret = krb5_c_encrypt_length(context, enctype, clear->length, &len);
    if (ret)
 return ret;

    if (len != cipher->length) {
 krb5_warnx(context, "c_encrypt_length wrong %lu != %lu",
     (unsigned long)len, (unsigned long)cipher->length);
 return EINVAL;
    }

    return 0;
}
