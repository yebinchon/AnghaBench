
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
struct TYPE_9__ {int length; unsigned char* data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;


 int krb5_clear_error_message (int ) ;
 scalar_t__ krb5_crypto_prf (int ,int const,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ krb5_data_alloc (TYPE_1__*,int) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static krb5_error_code
krb5_crypto_prfplus(krb5_context context,
      const krb5_crypto crypto,
      const krb5_data *input,
      size_t length,
      krb5_data *output)
{
    krb5_error_code ret;
    krb5_data input2;
    unsigned char i = 1;
    unsigned char *p;

    krb5_data_zero(&input2);
    krb5_data_zero(output);

    krb5_clear_error_message(context);

    ret = krb5_data_alloc(output, length);
    if (ret) goto out;
    ret = krb5_data_alloc(&input2, input->length + 1);
    if (ret) goto out;

    krb5_clear_error_message(context);

    memcpy(((unsigned char *)input2.data) + 1, input->data, input->length);

    p = output->data;

    while (length) {
 krb5_data block;

 ((unsigned char *)input2.data)[0] = i++;

 ret = krb5_crypto_prf(context, crypto, &input2, &block);
 if (ret)
     goto out;

 if (block.length < length) {
     memcpy(p, block.data, block.length);
     length -= block.length;
 } else {
     memcpy(p, block.data, length);
     length = 0;
 }
 p += block.length;
 krb5_data_free(&block);
    }

 out:
    krb5_data_free(&input2);
    if (ret)
 krb5_data_free(output);
    return 0;
}
