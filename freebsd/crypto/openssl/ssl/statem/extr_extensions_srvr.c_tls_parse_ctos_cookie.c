
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int hrr ;
typedef int X509 ;
typedef int WPACKET ;
struct TYPE_15__ {int cookieok; } ;
struct TYPE_21__ {unsigned int version; int hello_retry_request; TYPE_2__ ext; TYPE_7__* s3; TYPE_1__* method; int tmp_session_id_len; int tmp_session_id; TYPE_3__* ctx; TYPE_5__* session_ctx; } ;
struct TYPE_19__ {scalar_t__ new_cipher; } ;
struct TYPE_20__ {int flags; unsigned int group_id; TYPE_6__ tmp; } ;
struct TYPE_17__ {int cookie_hmac_key; } ;
struct TYPE_18__ {TYPE_4__ ext; } ;
struct TYPE_16__ {scalar_t__ (* verify_stateless_cookie_cb ) (TYPE_8__*,unsigned char*,int) ;} ;
struct TYPE_14__ {int (* put_cipher_by_char ) (scalar_t__,int *,size_t*) ;} ;
typedef TYPE_8__ SSL ;
typedef int PACKET ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;


 unsigned int COOKIE_STATE_FORMAT_VERSION ;
 scalar_t__ CRYPTO_memcmp (unsigned char*,unsigned char const*,int) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_DigestSign (int *,unsigned char*,size_t*,unsigned char const*,size_t) ;
 scalar_t__ EVP_DigestSignInit (int *,int *,int ,int *,int *) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_free (int *) ;
 int EVP_PKEY_HMAC ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new_raw_private_key (int ,int *,int ,int) ;
 int EVP_sha256 () ;
 int MAX_HRR_SIZE ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 unsigned char* PACKET_data (int *) ;
 int PACKET_forward (int *,int) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int PACKET_get_net_4 (int *,unsigned long*) ;
 int PACKET_remaining (int *) ;
 int SHA256_DIGEST_LENGTH ;
 int SSL3_MT_SERVER_HELLO ;
 int SSL3_RANDOM_SIZE ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PARSE_CTOS_COOKIE ;
 int SSL_R_BAD_CIPHER ;
 int SSL_R_BAD_PROTOCOL_VERSION_NUMBER ;
 int SSL_R_COOKIE_MISMATCH ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSLfatal (TYPE_8__*,int ,int ,int ) ;
 unsigned int TLS1_2_VERSION ;
 unsigned int TLS1_3_VERSION ;
 int TLS1_FLAGS_STATELESS ;
 unsigned int TLSEXT_TYPE_cookie ;
 unsigned int TLSEXT_TYPE_key_share ;
 unsigned int TLSEXT_TYPE_supported_versions ;
 int WPACKET_cleanup (int *) ;
 int WPACKET_close (int *) ;
 int WPACKET_finish (int *) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_init_static_len (int *,unsigned char*,int,int ) ;
 int WPACKET_memcpy (int *,int ,int ) ;
 int WPACKET_put_bytes_u16 (int *,unsigned int) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u24 (int *) ;
 int WPACKET_sub_memcpy_u16 (int *,unsigned char const*,size_t) ;
 int WPACKET_sub_memcpy_u8 (int *,int ,int ) ;
 int create_synthetic_message_hash (TYPE_8__*,unsigned char*,int,unsigned char*,size_t) ;
 int hrrrandom ;
 scalar_t__ ssl_get_cipher_by_char (TYPE_8__*,unsigned char const*,int ) ;
 scalar_t__ stub1 (TYPE_8__*,unsigned char*,int) ;
 int stub2 (scalar_t__,int *,size_t*) ;
 scalar_t__ time (int *) ;

int tls_parse_ctos_cookie(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                          size_t chainidx)
{

    unsigned int format, version, key_share, group_id;
    EVP_MD_CTX *hctx;
    EVP_PKEY *pkey;
    PACKET cookie, raw, chhash, appcookie;
    WPACKET hrrpkt;
    const unsigned char *data, *mdin, *ciphdata;
    unsigned char hmac[SHA256_DIGEST_LENGTH];
    unsigned char hrr[MAX_HRR_SIZE];
    size_t rawlen, hmaclen, hrrlen, ciphlen;
    unsigned long tm, now;


    if (s->ctx->verify_stateless_cookie_cb == ((void*)0)
            || (s->s3->flags & TLS1_FLAGS_STATELESS) == 0)
        return 1;

    if (!PACKET_as_length_prefixed_2(pkt, &cookie)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    raw = cookie;
    data = PACKET_data(&raw);
    rawlen = PACKET_remaining(&raw);
    if (rawlen < SHA256_DIGEST_LENGTH
            || !PACKET_forward(&raw, rawlen - SHA256_DIGEST_LENGTH)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    mdin = PACKET_data(&raw);


    hctx = EVP_MD_CTX_create();
    pkey = EVP_PKEY_new_raw_private_key(EVP_PKEY_HMAC, ((void*)0),
                                        s->session_ctx->ext.cookie_hmac_key,
                                        sizeof(s->session_ctx->ext
                                               .cookie_hmac_key));
    if (hctx == ((void*)0) || pkey == ((void*)0)) {
        EVP_MD_CTX_free(hctx);
        EVP_PKEY_free(pkey);
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    hmaclen = SHA256_DIGEST_LENGTH;
    if (EVP_DigestSignInit(hctx, ((void*)0), EVP_sha256(), ((void*)0), pkey) <= 0
            || EVP_DigestSign(hctx, hmac, &hmaclen, data,
                              rawlen - SHA256_DIGEST_LENGTH) <= 0
            || hmaclen != SHA256_DIGEST_LENGTH) {
        EVP_MD_CTX_free(hctx);
        EVP_PKEY_free(pkey);
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    EVP_MD_CTX_free(hctx);
    EVP_PKEY_free(pkey);

    if (CRYPTO_memcmp(hmac, mdin, SHA256_DIGEST_LENGTH) != 0) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_COOKIE_MISMATCH);
        return 0;
    }

    if (!PACKET_get_net_2(&cookie, &format)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    if (format != COOKIE_STATE_FORMAT_VERSION)
        return 1;







    if (!PACKET_get_net_2(&cookie, &version)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    if (version != TLS1_3_VERSION) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_BAD_PROTOCOL_VERSION_NUMBER);
        return 0;
    }

    if (!PACKET_get_net_2(&cookie, &group_id)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    ciphdata = PACKET_data(&cookie);
    if (!PACKET_forward(&cookie, 2)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    if (group_id != s->s3->group_id
            || s->s3->tmp.new_cipher
               != ssl_get_cipher_by_char(s, ciphdata, 0)) {




        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_BAD_CIPHER);
        return 0;
    }

    if (!PACKET_get_1(&cookie, &key_share)
            || !PACKET_get_net_4(&cookie, &tm)
            || !PACKET_get_length_prefixed_2(&cookie, &chhash)
            || !PACKET_get_length_prefixed_1(&cookie, &appcookie)
            || PACKET_remaining(&cookie) != SHA256_DIGEST_LENGTH) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }


    now = (unsigned long)time(((void*)0));
    if (tm > now || (now - tm) > 600) {

        return 1;
    }


    if (s->ctx->verify_stateless_cookie_cb(s, PACKET_data(&appcookie),
                                     PACKET_remaining(&appcookie)) == 0) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_COOKIE_MISMATCH);
        return 0;
    }






    if (!WPACKET_init_static_len(&hrrpkt, hrr, sizeof(hrr), 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!WPACKET_put_bytes_u8(&hrrpkt, SSL3_MT_SERVER_HELLO)
            || !WPACKET_start_sub_packet_u24(&hrrpkt)
            || !WPACKET_put_bytes_u16(&hrrpkt, TLS1_2_VERSION)
            || !WPACKET_memcpy(&hrrpkt, hrrrandom, SSL3_RANDOM_SIZE)
            || !WPACKET_sub_memcpy_u8(&hrrpkt, s->tmp_session_id,
                                      s->tmp_session_id_len)
            || !s->method->put_cipher_by_char(s->s3->tmp.new_cipher, &hrrpkt,
                                              &ciphlen)
            || !WPACKET_put_bytes_u8(&hrrpkt, 0)
            || !WPACKET_start_sub_packet_u16(&hrrpkt)) {
        WPACKET_cleanup(&hrrpkt);
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!WPACKET_put_bytes_u16(&hrrpkt, TLSEXT_TYPE_supported_versions)
            || !WPACKET_start_sub_packet_u16(&hrrpkt)
            || !WPACKET_put_bytes_u16(&hrrpkt, s->version)
            || !WPACKET_close(&hrrpkt)) {
        WPACKET_cleanup(&hrrpkt);
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (key_share) {
        if (!WPACKET_put_bytes_u16(&hrrpkt, TLSEXT_TYPE_key_share)
                || !WPACKET_start_sub_packet_u16(&hrrpkt)
                || !WPACKET_put_bytes_u16(&hrrpkt, s->s3->group_id)
                || !WPACKET_close(&hrrpkt)) {
            WPACKET_cleanup(&hrrpkt);
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }
    if (!WPACKET_put_bytes_u16(&hrrpkt, TLSEXT_TYPE_cookie)
            || !WPACKET_start_sub_packet_u16(&hrrpkt)
            || !WPACKET_sub_memcpy_u16(&hrrpkt, data, rawlen)
            || !WPACKET_close(&hrrpkt)
            || !WPACKET_close(&hrrpkt)
            || !WPACKET_close(&hrrpkt)
            || !WPACKET_get_total_written(&hrrpkt, &hrrlen)
            || !WPACKET_finish(&hrrpkt)) {
        WPACKET_cleanup(&hrrpkt);
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }


    if (!create_synthetic_message_hash(s, PACKET_data(&chhash),
                                       PACKET_remaining(&chhash), hrr,
                                       hrrlen)) {

        return 0;
    }


    s->hello_retry_request = 1;

    s->ext.cookieok = 1;


    return 1;
}
