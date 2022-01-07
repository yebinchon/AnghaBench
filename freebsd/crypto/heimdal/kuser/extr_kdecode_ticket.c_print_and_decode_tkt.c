
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_7__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;
struct TYPE_8__ {int enc_part; } ;
typedef TYPE_2__ Ticket ;
typedef int EncTicketPart ;


 int KRB5_KU_TICKET ;
 scalar_t__ decode_EncTicketPart (int ,int ,int *,size_t*) ;
 scalar_t__ decode_Ticket (int ,int ,TYPE_2__*,size_t*) ;
 int free_EncTicketPart (int *) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 int krb5_data_free (TYPE_1__*) ;
 scalar_t__ krb5_decrypt_EncryptedData (int ,int ,int ,int *,TYPE_1__*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 scalar_t__ krb5_string_to_key (int ,int ,char*,int ,int *) ;

__attribute__((used)) static void
print_and_decode_tkt (krb5_context context,
        krb5_data *ticket,
        krb5_principal server,
        krb5_enctype enctype)
{
    krb5_error_code ret;
    krb5_crypto crypto;
    krb5_data dec_data;
    size_t len;
    EncTicketPart decr_part;
    krb5_keyblock key;
    Ticket tkt;

    ret = decode_Ticket (ticket->data, ticket->length, &tkt, &len);
    if (ret)
 krb5_err (context, 1, ret, "decode_Ticket");

    ret = krb5_string_to_key (context, enctype, "foo", server, &key);
    if (ret)
 krb5_err (context, 1, ret, "krb5_string_to_key");

    ret = krb5_crypto_init(context, &key, 0, &crypto);
    if (ret)
 krb5_err (context, 1, ret, "krb5_crypto_init");

    ret = krb5_decrypt_EncryptedData (context, crypto, KRB5_KU_TICKET,
          &tkt.enc_part, &dec_data);
    krb5_crypto_destroy (context, crypto);
    if (ret)
 krb5_err (context, 1, ret, "krb5_decrypt_EncryptedData");
    ret = decode_EncTicketPart (dec_data.data, dec_data.length,
    &decr_part, &len);
    krb5_data_free (&dec_data);
    if (ret)
 krb5_err (context, 1, ret, "krb5_decode_EncTicketPart");
    free_EncTicketPart(&decr_part);
}
