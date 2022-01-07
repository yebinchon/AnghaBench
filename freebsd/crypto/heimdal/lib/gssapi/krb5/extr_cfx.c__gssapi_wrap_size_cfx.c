
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_cksumtype ;
typedef TYPE_1__* gsskrb5_ctx ;
typedef int gss_qop_t ;
struct TYPE_3__ {int crypto; } ;
typedef int OM_uint32 ;


 int krb5_checksumsize (int ,int ,size_t*) ;
 int krb5_crypto_get_checksum_type (int ,int ,int *) ;
 size_t krb5_get_wrapped_length (int ,int ,size_t) ;

OM_uint32
_gssapi_wrap_size_cfx(OM_uint32 *minor_status,
        const gsskrb5_ctx ctx,
        krb5_context context,
        int conf_req_flag,
        gss_qop_t qop_req,
        OM_uint32 req_output_size,
        OM_uint32 *max_input_size)
{
    krb5_error_code ret;

    *max_input_size = 0;


    if (req_output_size < 16)
 return 0;
    req_output_size -= 16;

    if (conf_req_flag) {
 size_t wrapped_size, sz;

 wrapped_size = req_output_size + 1;
 do {
     wrapped_size--;
     sz = krb5_get_wrapped_length(context,
      ctx->crypto, wrapped_size);
 } while (wrapped_size && sz > req_output_size);
 if (wrapped_size == 0)
     return 0;


 if (wrapped_size < 16)
     return 0;

 wrapped_size -= 16;

 *max_input_size = wrapped_size;
    } else {
 krb5_cksumtype type;
 size_t cksumsize;

 ret = krb5_crypto_get_checksum_type(context, ctx->crypto, &type);
 if (ret)
     return ret;

 ret = krb5_checksumsize(context, type, &cksumsize);
 if (ret)
     return ret;

 if (req_output_size < cksumsize)
     return 0;


 *max_input_size = req_output_size - cksumsize;
    }

    return 0;
}
