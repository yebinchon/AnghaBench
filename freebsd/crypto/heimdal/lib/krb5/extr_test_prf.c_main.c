
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_7__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;


 int ETYPE_AES256_CTS_HMAC_SHA1_96 ;
 int errx (int,char*,scalar_t__) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 scalar_t__ krb5_crypto_prf (int ,int ,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ krb5_crypto_prf_length (int ,int ,size_t*) ;
 scalar_t__ krb5_data_cmp (TYPE_1__*,TYPE_1__*) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_context (int ) ;
 int krb5_free_keyblock_contents (int ,int *) ;
 scalar_t__ krb5_generate_random_keyblock (int ,int ,int *) ;
 scalar_t__ krb5_init_context (int *) ;
 int rk_UNCONST (char*) ;

int
main(int argc, char **argv)
{
    krb5_context context;
    krb5_error_code ret;
    krb5_keyblock key;
    krb5_crypto crypto;
    size_t length;
    krb5_data input, output, output2;
    krb5_enctype etype = ETYPE_AES256_CTS_HMAC_SHA1_96;

    ret = krb5_init_context(&context);
    if (ret)
 errx(1, "krb5_init_context %d", ret);

    ret = krb5_generate_random_keyblock(context, etype, &key);
    if (ret)
 krb5_err(context, 1, ret, "krb5_generate_random_keyblock");

    ret = krb5_crypto_prf_length(context, etype, &length);
    if (ret)
 krb5_err(context, 1, ret, "krb5_crypto_prf_length");

    ret = krb5_crypto_init(context, &key, 0, &crypto);
    if (ret)
 krb5_err(context, 1, ret, "krb5_crypto_init");

    input.data = rk_UNCONST("foo");
    input.length = 3;

    ret = krb5_crypto_prf(context, crypto, &input, &output);
    if (ret)
 krb5_err(context, 1, ret, "krb5_crypto_prf");

    ret = krb5_crypto_prf(context, crypto, &input, &output2);
    if (ret)
 krb5_err(context, 1, ret, "krb5_crypto_prf");

    if (krb5_data_cmp(&output, &output2) != 0)
 krb5_errx(context, 1, "krb5_data_cmp");

    krb5_data_free(&output);
    krb5_data_free(&output2);

    krb5_crypto_destroy(context, crypto);

    krb5_free_keyblock_contents(context, &key);

    krb5_free_context(context);

    return 0;
}
