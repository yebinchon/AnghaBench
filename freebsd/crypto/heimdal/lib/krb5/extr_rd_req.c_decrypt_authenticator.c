
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_key_usage ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;
typedef int EncryptionKey ;
typedef int EncryptedData ;
typedef int Authenticator ;


 int KRB5_KU_AP_REQ_AUTH ;
 int KRB5_KU_TGS_REQ_AUTH ;
 scalar_t__ decode_Authenticator (int ,int ,int *,size_t*) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 int krb5_data_free (TYPE_1__*) ;
 scalar_t__ krb5_decrypt_EncryptedData (int ,int ,int ,int *,TYPE_1__*) ;

__attribute__((used)) static krb5_error_code
decrypt_authenticator (krb5_context context,
         EncryptionKey *key,
         EncryptedData *enc_part,
         Authenticator *authenticator,
         krb5_key_usage usage)
{
    krb5_error_code ret;
    krb5_data plain;
    size_t len;
    krb5_crypto crypto;

    ret = krb5_crypto_init(context, key, 0, &crypto);
    if (ret)
 return ret;
    ret = krb5_decrypt_EncryptedData (context,
          crypto,
          usage ,
          enc_part,
          &plain);

    if (ret && usage == KRB5_KU_TGS_REQ_AUTH)
 ret = krb5_decrypt_EncryptedData (context,
       crypto,
       KRB5_KU_AP_REQ_AUTH,
       enc_part,
       &plain);
    krb5_crypto_destroy(context, crypto);
    if (ret)
 return ret;

    ret = decode_Authenticator(plain.data, plain.length,
          authenticator, &len);
    krb5_data_free (&plain);
    return ret;
}
