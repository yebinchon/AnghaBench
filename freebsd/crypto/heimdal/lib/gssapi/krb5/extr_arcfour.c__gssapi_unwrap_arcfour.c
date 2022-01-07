
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_14__ {int* data; int length; } ;
struct TYPE_15__ {TYPE_1__ keyvalue; int keytype; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int k6_data ;
typedef TYPE_3__* gsskrb5_ctx ;
typedef scalar_t__ gss_qop_t ;
typedef TYPE_4__* gss_buffer_t ;
typedef int cksum_data ;
struct TYPE_17__ {int* value; size_t length; } ;
struct TYPE_16__ {int more_flags; int ctx_id_mutex; int order; } ;
typedef scalar_t__ OM_uint32 ;
typedef int Klocaldata ;
typedef int EVP_CIPHER_CTX ;
typedef int Confounder ;


 scalar_t__ ENOMEM ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_Cipher (int *,int*,int*,size_t) ;
 int EVP_CipherInit_ex (int *,int ,int *,int*,int *,int) ;
 int EVP_rc4 () ;
 int GSS_ARCFOUR_WRAP_TOKEN_DCE_DER_HEADER_SIZE ;
 int GSS_ARCFOUR_WRAP_TOKEN_SIZE ;
 int GSS_KRB5_MECHANISM ;
 scalar_t__ GSS_S_BAD_MECH ;
 scalar_t__ GSS_S_BAD_MIC ;
 scalar_t__ GSS_S_BAD_SIG ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 scalar_t__ IS_DCE_STYLE (TYPE_3__* const) ;
 int KRB5_KU_USAGE_SEAL ;
 int LOCAL ;
 scalar_t__ _gssapi_msg_order_check (int ,int ) ;
 scalar_t__ _gssapi_verify_mech_header (int**,size_t,int ) ;
 scalar_t__ _gssapi_verify_pad (TYPE_4__*,size_t,size_t*) ;
 int _gsskrb5_decode_be_om_uint32 (int*,int *) ;
 int _gsskrb5_release_buffer (scalar_t__*,TYPE_4__*) ;
 scalar_t__ arcfour_mic_cksum (int ,TYPE_2__*,int ,int*,int,int*,int,int*,int,int*,size_t) ;
 scalar_t__ arcfour_mic_key (int ,TYPE_2__*,int*,int,int*,int) ;
 int ct_memcmp (int*,int*,int) ;
 int* malloc (size_t) ;
 int memcmp (int*,char*,int) ;
 int memcpy (int*,int*,size_t) ;
 int memset (int*,int ,int) ;

OM_uint32 _gssapi_unwrap_arcfour(OM_uint32 *minor_status,
     const gsskrb5_ctx context_handle,
     krb5_context context,
     const gss_buffer_t input_message_buffer,
     gss_buffer_t output_message_buffer,
     int *conf_state,
     gss_qop_t *qop_state,
     krb5_keyblock *key)
{
    u_char Klocaldata[16];
    krb5_keyblock Klocal;
    krb5_error_code ret;
    uint32_t seq_number;
    size_t datalen;
    OM_uint32 omret;
    u_char k6_data[16], SND_SEQ[8], Confounder[8];
    u_char cksum_data[8];
    u_char *p, *p0;
    int cmp;
    int conf_flag;
    size_t padlen = 0, len;

    if (conf_state)
 *conf_state = 0;
    if (qop_state)
 *qop_state = 0;

    p0 = input_message_buffer->value;

    if (IS_DCE_STYLE(context_handle)) {
 len = GSS_ARCFOUR_WRAP_TOKEN_SIZE +
     GSS_ARCFOUR_WRAP_TOKEN_DCE_DER_HEADER_SIZE;
 if (input_message_buffer->length < len)
     return GSS_S_BAD_MECH;
    } else {
 len = input_message_buffer->length;
    }

    omret = _gssapi_verify_mech_header(&p0,
           len,
           GSS_KRB5_MECHANISM);
    if (omret)
 return omret;


    len = (p0 - (u_char *)input_message_buffer->value) +
 GSS_ARCFOUR_WRAP_TOKEN_SIZE;

    if (len > input_message_buffer->length)
 return GSS_S_BAD_MECH;


    datalen = input_message_buffer->length - len;

    p = p0;

    if (memcmp(p, "\x02\x01", 2) != 0)
 return GSS_S_BAD_SIG;
    p += 2;
    if (memcmp(p, "\x11\x00", 2) != 0)
 return GSS_S_BAD_SIG;
    p += 2;

    if (memcmp (p, "\x10\x00", 2) == 0)
 conf_flag = 1;
    else if (memcmp (p, "\xff\xff", 2) == 0)
 conf_flag = 0;
    else
 return GSS_S_BAD_SIG;

    p += 2;
    if (memcmp (p, "\xff\xff", 2) != 0)
 return GSS_S_BAD_MIC;
    p = ((void*)0);

    ret = arcfour_mic_key(context, key,
     p0 + 16, 8,
     k6_data, sizeof(k6_data));
    if (ret) {
 *minor_status = ret;
 return GSS_S_FAILURE;
    }

    {
 EVP_CIPHER_CTX *rc4_key;

 rc4_key = EVP_CIPHER_CTX_new();
 if (rc4_key == ((void*)0)) {
     *minor_status = ENOMEM;
     return GSS_S_FAILURE;
 }
 EVP_CipherInit_ex(rc4_key, EVP_rc4(), ((void*)0), k6_data, ((void*)0), 1);
 EVP_Cipher(rc4_key, SND_SEQ, p0 + 8, 8);
 EVP_CIPHER_CTX_free(rc4_key);
 memset(k6_data, 0, sizeof(k6_data));
    }

    _gsskrb5_decode_be_om_uint32(SND_SEQ, &seq_number);

    if (context_handle->more_flags & LOCAL)
 cmp = memcmp(&SND_SEQ[4], "\xff\xff\xff\xff", 4);
    else
 cmp = memcmp(&SND_SEQ[4], "\x00\x00\x00\x00", 4);

    if (cmp != 0) {
 *minor_status = 0;
 return GSS_S_BAD_MIC;
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
     SND_SEQ, 4,
     k6_data, sizeof(k6_data));
    memset(Klocaldata, 0, sizeof(Klocaldata));
    if (ret) {
 *minor_status = ret;
 return GSS_S_FAILURE;
    }

    output_message_buffer->value = malloc(datalen);
    if (output_message_buffer->value == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }
    output_message_buffer->length = datalen;

    if(conf_flag) {
 EVP_CIPHER_CTX *rc4_key;

 rc4_key = EVP_CIPHER_CTX_new();
 if (rc4_key == ((void*)0)) {
     _gsskrb5_release_buffer(minor_status, output_message_buffer);
     *minor_status = ENOMEM;
     return GSS_S_FAILURE;
 }
 EVP_CipherInit_ex(rc4_key, EVP_rc4(), ((void*)0), k6_data, ((void*)0), 1);
 EVP_Cipher(rc4_key, Confounder, p0 + 24, 8);
 EVP_Cipher(rc4_key, output_message_buffer->value, p0 + GSS_ARCFOUR_WRAP_TOKEN_SIZE, datalen);
 EVP_CIPHER_CTX_free(rc4_key);
    } else {
 memcpy(Confounder, p0 + 24, 8);
 memcpy(output_message_buffer->value,
        p0 + GSS_ARCFOUR_WRAP_TOKEN_SIZE,
        datalen);
    }
    memset(k6_data, 0, sizeof(k6_data));

    if (!IS_DCE_STYLE(context_handle)) {
 ret = _gssapi_verify_pad(output_message_buffer, datalen, &padlen);
 if (ret) {
     _gsskrb5_release_buffer(minor_status, output_message_buffer);
     *minor_status = 0;
     return ret;
 }
 output_message_buffer->length -= padlen;
    }

    ret = arcfour_mic_cksum(context,
       key, KRB5_KU_USAGE_SEAL,
       cksum_data, sizeof(cksum_data),
       p0, 8,
       Confounder, sizeof(Confounder),
       output_message_buffer->value,
       output_message_buffer->length + padlen);
    if (ret) {
 _gsskrb5_release_buffer(minor_status, output_message_buffer);
 *minor_status = ret;
 return GSS_S_FAILURE;
    }

    cmp = ct_memcmp(cksum_data, p0 + 16, 8);
    if (cmp) {
 _gsskrb5_release_buffer(minor_status, output_message_buffer);
 *minor_status = 0;
 return GSS_S_BAD_MIC;
    }

    HEIMDAL_MUTEX_lock(&context_handle->ctx_id_mutex);
    omret = _gssapi_msg_order_check(context_handle->order, seq_number);
    HEIMDAL_MUTEX_unlock(&context_handle->ctx_id_mutex);
    if (omret)
 return omret;

    if (conf_state)
 *conf_state = conf_flag;

    *minor_status = 0;
    return GSS_S_COMPLETE;
}
