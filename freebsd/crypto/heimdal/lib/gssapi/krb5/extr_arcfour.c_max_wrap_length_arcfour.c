
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_crypto ;
typedef int gsskrb5_ctx ;
typedef size_t OM_uint32 ;


 size_t GSS_ARCFOUR_WRAP_TOKEN_SIZE ;
 int GSS_KRB5_MECHANISM ;
 size_t GSS_S_COMPLETE ;
 scalar_t__ IS_DCE_STYLE (int const) ;
 int _gssapi_encap_length (size_t,size_t*,size_t*,int ) ;
 int _gsskrb5_encap_length (size_t,size_t*,size_t*,int ) ;

__attribute__((used)) static OM_uint32
max_wrap_length_arcfour(const gsskrb5_ctx ctx,
   krb5_crypto crypto,
   size_t input_length,
   OM_uint32 *max_input_size)
{





    if (IS_DCE_STYLE(ctx)) {
 size_t len, total_len;

 len = GSS_ARCFOUR_WRAP_TOKEN_SIZE;
 _gssapi_encap_length(len, &len, &total_len, GSS_KRB5_MECHANISM);

 if (input_length < len)
     *max_input_size = 0;
 else
     *max_input_size = input_length - len;

    } else {
 size_t extrasize = GSS_ARCFOUR_WRAP_TOKEN_SIZE;
 size_t blocksize = 8;
 size_t len, total_len;

 len = 8 + input_length + blocksize + extrasize;

 _gsskrb5_encap_length(len, &len, &total_len, GSS_KRB5_MECHANISM);

 total_len -= input_length;
 if (total_len < input_length) {
     *max_input_size = (input_length - total_len);
     (*max_input_size) &= (~(OM_uint32)(blocksize - 1));
 } else {
     *max_input_size = 0;
 }
    }

    return GSS_S_COMPLETE;
}
