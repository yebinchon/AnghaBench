
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;
typedef int EncryptedData ;
typedef int EncTicketPart ;


 int KRB5_KU_TICKET ;
 int N_ (char*,char*) ;
 scalar_t__ decode_EncTicketPart (int ,int ,int *,size_t*) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 int krb5_data_free (TYPE_1__*) ;
 scalar_t__ krb5_decrypt_EncryptedData (int ,int ,int ,int *,TYPE_1__*) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;

__attribute__((used)) static krb5_error_code
decrypt_tkt_enc_part (krb5_context context,
        krb5_keyblock *key,
        EncryptedData *enc_part,
        EncTicketPart *decr_part)
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
          KRB5_KU_TICKET,
          enc_part,
          &plain);
    krb5_crypto_destroy(context, crypto);
    if (ret)
 return ret;

    ret = decode_EncTicketPart(plain.data, plain.length, decr_part, &len);
    if (ret)
        krb5_set_error_message(context, ret,
          N_("Failed to decode encrypted "
      "ticket part", ""));
    krb5_data_free (&plain);
    return ret;
}
