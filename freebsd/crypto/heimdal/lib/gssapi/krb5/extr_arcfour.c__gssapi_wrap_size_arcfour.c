
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_crypto ;
typedef int krb5_context ;
typedef int gsskrb5_ctx ;
typedef int gss_qop_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 scalar_t__ max_wrap_length_arcfour (int const,int ,scalar_t__,scalar_t__*) ;

OM_uint32
_gssapi_wrap_size_arcfour(OM_uint32 *minor_status,
     const gsskrb5_ctx ctx,
     krb5_context context,
     int conf_req_flag,
     gss_qop_t qop_req,
     OM_uint32 req_output_size,
     OM_uint32 *max_input_size,
     krb5_keyblock *key)
{
    krb5_error_code ret;
    krb5_crypto crypto;

    ret = krb5_crypto_init(context, key, 0, &crypto);
    if (ret != 0) {
 *minor_status = ret;
 return GSS_S_FAILURE;
    }

    ret = max_wrap_length_arcfour(ctx, crypto,
      req_output_size, max_input_size);
    if (ret != 0) {
 *minor_status = ret;
 krb5_crypto_destroy(context, crypto);
 return GSS_S_FAILURE;
    }

    krb5_crypto_destroy(context, crypto);

    return GSS_S_COMPLETE;
}
