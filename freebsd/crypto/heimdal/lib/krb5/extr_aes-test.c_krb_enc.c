
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_error_code ;
struct TYPE_7__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;


 int EINVAL ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 int krb5_decrypt (int ,int ,unsigned int,int ,scalar_t__,TYPE_1__*) ;
 int krb5_warn (int ,int,char*) ;
 int krb5_warnx (int ,char*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
krb_enc(krb5_context context,
 krb5_crypto crypto,
 unsigned usage,
 krb5_data *cipher,
 krb5_data *clear)
{
    krb5_data decrypt;
    krb5_error_code ret;

    krb5_data_zero(&decrypt);

    ret = krb5_decrypt(context,
         crypto,
         usage,
         cipher->data,
         cipher->length,
         &decrypt);

    if (ret) {
 krb5_warn(context, ret, "krb5_decrypt");
 return ret;
    }

    if (decrypt.length != clear->length ||
 memcmp(decrypt.data, clear->data, decrypt.length) != 0) {
 krb5_warnx(context, "clear text not same");
 return EINVAL;
    }

    krb5_data_free(&decrypt);

    return 0;
}
