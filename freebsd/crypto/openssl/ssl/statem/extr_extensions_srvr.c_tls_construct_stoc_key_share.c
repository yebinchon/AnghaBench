
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_10__ {scalar_t__ hello_retry_request; TYPE_2__* s3; int hit; } ;
struct TYPE_8__ {int * pkey; } ;
struct TYPE_9__ {TYPE_1__ tmp; int group_id; int * peer_tmp; } ;
typedef TYPE_3__ SSL ;
typedef int EXT_RETURN ;
typedef int EVP_PKEY ;


 int ERR_R_EC_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_free (int *) ;
 size_t EVP_PKEY_get1_tls_encodedpoint (int *,unsigned char**) ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int OPENSSL_free (unsigned char*) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE ;
 scalar_t__ SSL_HRR_PENDING ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int TLSEXT_TYPE_key_share ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_sub_memcpy_u16 (int *,unsigned char*,size_t) ;
 scalar_t__ ssl_derive (TYPE_3__*,int *,int *,int) ;
 int * ssl_generate_pkey (int *) ;
 int tls13_generate_handshake_secret (TYPE_3__*,int *,int ) ;

EXT_RETURN tls_construct_stoc_key_share(SSL *s, WPACKET *pkt,
                                        unsigned int context, X509 *x,
                                        size_t chainidx)
{

    unsigned char *encodedPoint;
    size_t encoded_pt_len = 0;
    EVP_PKEY *ckey = s->s3->peer_tmp, *skey = ((void*)0);

    if (s->hello_retry_request == SSL_HRR_PENDING) {
        if (ckey != ((void*)0)) {

            return EXT_RETURN_NOT_SENT;
        }
        if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_key_share)
                || !WPACKET_start_sub_packet_u16(pkt)
                || !WPACKET_put_bytes_u16(pkt, s->s3->group_id)
                || !WPACKET_close(pkt)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }

        return EXT_RETURN_SENT;
    }

    if (ckey == ((void*)0)) {

        if (!s->hit || !tls13_generate_handshake_secret(s, ((void*)0), 0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        return EXT_RETURN_NOT_SENT;
    }

    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_key_share)
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_put_bytes_u16(pkt, s->s3->group_id)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    skey = ssl_generate_pkey(ckey);
    if (skey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE,
                 ERR_R_MALLOC_FAILURE);
        return EXT_RETURN_FAIL;
    }


    encoded_pt_len = EVP_PKEY_get1_tls_encodedpoint(skey, &encodedPoint);
    if (encoded_pt_len == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE,
                 ERR_R_EC_LIB);
        EVP_PKEY_free(skey);
        return EXT_RETURN_FAIL;
    }

    if (!WPACKET_sub_memcpy_u16(pkt, encodedPoint, encoded_pt_len)
            || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        EVP_PKEY_free(skey);
        OPENSSL_free(encodedPoint);
        return EXT_RETURN_FAIL;
    }
    OPENSSL_free(encodedPoint);


    s->s3->tmp.pkey = skey;
    if (ssl_derive(s, skey, ckey, 1) == 0) {

        return EXT_RETURN_FAIL;
    }
    return EXT_RETURN_SENT;



}
