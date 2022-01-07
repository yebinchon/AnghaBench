
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_13__ {int* data; int length; } ;
struct TYPE_14__ {TYPE_1__ keyvalue; int keytype; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int k6_data ;
typedef int int32_t ;
typedef TYPE_3__* gsskrb5_ctx ;
typedef int gss_qop_t ;
typedef TYPE_4__* gss_buffer_t ;
struct TYPE_16__ {size_t length; int * value; } ;
struct TYPE_15__ {int more_flags; int ctx_id_mutex; int auth_context; } ;
typedef scalar_t__ OM_uint32 ;
typedef int Klocaldata ;
typedef int EVP_CIPHER_CTX ;


 scalar_t__ ENOMEM ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_Cipher (int *,int*,int*,int) ;
 int EVP_CipherInit_ex (int *,int ,int *,int*,int *,int) ;
 int EVP_rc4 () ;
 size_t GSS_ARCFOUR_WRAP_TOKEN_SIZE ;
 int GSS_KRB5_MECHANISM ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 scalar_t__ IS_DCE_STYLE (TYPE_3__* const) ;
 int KRB5_KU_USAGE_SEAL ;
 int LOCAL ;
 int _gssapi_encap_length (size_t,size_t*,size_t*,int ) ;
 int* _gssapi_make_mech_header (int *,size_t,int ) ;
 int _gsskrb5_encode_be_om_uint32 (int ,int*) ;
 int _gsskrb5_release_buffer (scalar_t__*,TYPE_4__*) ;
 scalar_t__ arcfour_mic_cksum (int ,TYPE_2__*,int ,int*,int,int*,int,int*,int,int*,size_t) ;
 scalar_t__ arcfour_mic_key (int ,TYPE_2__*,int*,int,int*,int) ;
 int krb5_auth_con_getlocalseqnumber (int ,int ,int *) ;
 int krb5_auth_con_setlocalseqnumber (int ,int ,int ) ;
 int krb5_generate_random_block (int*,int) ;
 int * malloc (size_t) ;
 int memcpy (int*,int *,size_t) ;
 int memset (int*,int,int) ;

OM_uint32
_gssapi_wrap_arcfour(OM_uint32 * minor_status,
       const gsskrb5_ctx context_handle,
       krb5_context context,
       int conf_req_flag,
       gss_qop_t qop_req,
       const gss_buffer_t input_message_buffer,
       int * conf_state,
       gss_buffer_t output_message_buffer,
       krb5_keyblock *key)
{
    u_char Klocaldata[16], k6_data[16], *p, *p0;
    size_t len, total_len, datalen;
    krb5_keyblock Klocal;
    krb5_error_code ret;
    int32_t seq_number;

    if (conf_state)
 *conf_state = 0;

    datalen = input_message_buffer->length;

    if (IS_DCE_STYLE(context_handle)) {
 len = GSS_ARCFOUR_WRAP_TOKEN_SIZE;
 _gssapi_encap_length(len, &len, &total_len, GSS_KRB5_MECHANISM);
 total_len += datalen;
    } else {
 datalen += 1;
 len = datalen + GSS_ARCFOUR_WRAP_TOKEN_SIZE;
 _gssapi_encap_length(len, &len, &total_len, GSS_KRB5_MECHANISM);
    }

    output_message_buffer->length = total_len;
    output_message_buffer->value = malloc (total_len);
    if (output_message_buffer->value == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }

    p0 = _gssapi_make_mech_header(output_message_buffer->value,
      len,
      GSS_KRB5_MECHANISM);
    p = p0;

    *p++ = 0x02;
    *p++ = 0x01;
    *p++ = 0x11;
    *p++ = 0x00;
    if (conf_req_flag) {
 *p++ = 0x10;
 *p++ = 0x00;
    } else {
 *p++ = 0xff;
 *p++ = 0xff;
    }
    *p++ = 0xff;
    *p++ = 0xff;

    p = ((void*)0);

    HEIMDAL_MUTEX_lock(&context_handle->ctx_id_mutex);
    krb5_auth_con_getlocalseqnumber (context,
         context_handle->auth_context,
         &seq_number);

    _gsskrb5_encode_be_om_uint32(seq_number, p0 + 8);

    krb5_auth_con_setlocalseqnumber (context,
         context_handle->auth_context,
         ++seq_number);
    HEIMDAL_MUTEX_unlock(&context_handle->ctx_id_mutex);

    memset (p0 + 8 + 4,
     (context_handle->more_flags & LOCAL) ? 0 : 0xff,
     4);

    krb5_generate_random_block(p0 + 24, 8);


    p = p0 + GSS_ARCFOUR_WRAP_TOKEN_SIZE;
    memcpy(p, input_message_buffer->value, input_message_buffer->length);

    if (!IS_DCE_STYLE(context_handle))
 p[input_message_buffer->length] = 1;

    ret = arcfour_mic_cksum(context,
       key, KRB5_KU_USAGE_SEAL,
       p0 + 16, 8,
       p0, 8,
       p0 + 24, 8,
       p0 + GSS_ARCFOUR_WRAP_TOKEN_SIZE,
       datalen);
    if (ret) {
 *minor_status = ret;
 _gsskrb5_release_buffer(minor_status, output_message_buffer);
 return GSS_S_FAILURE;
    }

    {
 int i;

 Klocal.keytype = key->keytype;
 Klocal.keyvalue.data = Klocaldata;
 Klocal.keyvalue.length = sizeof(Klocaldata);

 for (i = 0; i < 16; i++)
     Klocaldata[i] = ((u_char *)key->keyvalue.data)[i] ^ 0xF0;
    }
    ret = arcfour_mic_key(context, &Klocal,
     p0 + 8, 4,
     k6_data, sizeof(k6_data));
    memset(Klocaldata, 0, sizeof(Klocaldata));
    if (ret) {
 _gsskrb5_release_buffer(minor_status, output_message_buffer);
 *minor_status = ret;
 return GSS_S_FAILURE;
    }


    if(conf_req_flag) {
 EVP_CIPHER_CTX *rc4_key;

 rc4_key = EVP_CIPHER_CTX_new();
 if (rc4_key == ((void*)0)) {
     _gsskrb5_release_buffer(minor_status, output_message_buffer);
     *minor_status = ENOMEM;
     return GSS_S_FAILURE;
 }
 EVP_CipherInit_ex(rc4_key, EVP_rc4(), ((void*)0), k6_data, ((void*)0), 1);
 EVP_Cipher(rc4_key, p0 + 24, p0 + 24, 8 + datalen);
 EVP_CIPHER_CTX_free(rc4_key);
    }
    memset(k6_data, 0, sizeof(k6_data));

    ret = arcfour_mic_key(context, key,
     p0 + 16, 8,
     k6_data, sizeof(k6_data));
    if (ret) {
 _gsskrb5_release_buffer(minor_status, output_message_buffer);
 *minor_status = ret;
 return GSS_S_FAILURE;
    }

    {
 EVP_CIPHER_CTX *rc4_key;

 rc4_key = EVP_CIPHER_CTX_new();
 if (rc4_key == ((void*)0)) {
     _gsskrb5_release_buffer(minor_status, output_message_buffer);
     *minor_status = ENOMEM;
     return GSS_S_FAILURE;
 }
 EVP_CipherInit_ex(rc4_key, EVP_rc4(), ((void*)0), k6_data, ((void*)0), 1);
 EVP_Cipher(rc4_key, p0 + 8, p0 + 8 , 8);
 EVP_CIPHER_CTX_free(rc4_key);
 memset(k6_data, 0, sizeof(k6_data));
    }

    if (conf_state)
 *conf_state = conf_req_flag;

    *minor_status = 0;
    return GSS_S_COMPLETE;
}
