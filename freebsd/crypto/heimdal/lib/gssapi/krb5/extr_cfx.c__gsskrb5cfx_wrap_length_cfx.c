
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_crypto ;
typedef int krb5_context ;
typedef int krb5_cksumtype ;
typedef int gss_cfx_wrap_token_desc ;


 int assert (int) ;
 scalar_t__ krb5_checksumsize (int ,int ,size_t*) ;
 scalar_t__ krb5_crypto_get_checksum_type (int ,int ,int *) ;
 scalar_t__ krb5_crypto_getblocksize (int ,int ,size_t*) ;
 scalar_t__ krb5_crypto_getpadsize (int ,int ,size_t*) ;
 scalar_t__ krb5_get_wrapped_length (int ,int ,size_t) ;

krb5_error_code
_gsskrb5cfx_wrap_length_cfx(krb5_context context,
       krb5_crypto crypto,
       int conf_req_flag,
       int dce_style,
       size_t input_length,
       size_t *output_length,
       size_t *cksumsize,
       uint16_t *padlength)
{
    krb5_error_code ret;
    krb5_cksumtype type;


    *output_length = sizeof(gss_cfx_wrap_token_desc);
    *padlength = 0;

    ret = krb5_crypto_get_checksum_type(context, crypto, &type);
    if (ret)
 return ret;

    ret = krb5_checksumsize(context, type, cksumsize);
    if (ret)
 return ret;

    if (conf_req_flag) {
 size_t padsize;


 input_length += sizeof(gss_cfx_wrap_token_desc);

 if (dce_style) {
  ret = krb5_crypto_getblocksize(context, crypto, &padsize);
 } else {
  ret = krb5_crypto_getpadsize(context, crypto, &padsize);
 }
 if (ret) {
     return ret;
 }
 if (padsize > 1) {

     *padlength = padsize - (input_length % padsize);


     input_length += *padlength;
 }

 *output_length += krb5_get_wrapped_length(context,
        crypto, input_length);
    } else {

 *output_length += input_length + *cksumsize;
    }

    assert(*output_length > input_length);

    return 0;
}
