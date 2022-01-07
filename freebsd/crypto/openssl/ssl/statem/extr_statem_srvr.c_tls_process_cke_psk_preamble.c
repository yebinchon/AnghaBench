
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int psk ;
struct TYPE_11__ {size_t (* psk_server_callback ) (TYPE_4__*,int ,unsigned char*,int) ;TYPE_3__* s3; TYPE_1__* session; } ;
struct TYPE_9__ {size_t psklen; int * psk; } ;
struct TYPE_10__ {TYPE_2__ tmp; } ;
struct TYPE_8__ {int psk_identity; } ;
typedef TYPE_4__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (unsigned char*,size_t) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int PACKET_strndup (int *,int *) ;
 scalar_t__ PSK_MAX_IDENTITY_LEN ;
 int PSK_MAX_PSK_LEN ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNKNOWN_PSK_IDENTITY ;
 int SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE ;
 int SSL_R_DATA_LENGTH_TOO_LONG ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_PSK_IDENTITY_NOT_FOUND ;
 int SSL_R_PSK_NO_SERVER_CB ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 size_t stub1 (TYPE_4__*,int ,unsigned char*,int) ;

__attribute__((used)) static int tls_process_cke_psk_preamble(SSL *s, PACKET *pkt)
{

    unsigned char psk[PSK_MAX_PSK_LEN];
    size_t psklen;
    PACKET psk_identity;

    if (!PACKET_get_length_prefixed_2(pkt, &psk_identity)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    if (PACKET_remaining(&psk_identity) > PSK_MAX_IDENTITY_LEN) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE,
                 SSL_R_DATA_LENGTH_TOO_LONG);
        return 0;
    }
    if (s->psk_server_callback == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE,
                 SSL_R_PSK_NO_SERVER_CB);
        return 0;
    }

    if (!PACKET_strndup(&psk_identity, &s->session->psk_identity)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    psklen = s->psk_server_callback(s, s->session->psk_identity,
                                    psk, sizeof(psk));

    if (psklen > PSK_MAX_PSK_LEN) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    } else if (psklen == 0) {



        SSLfatal(s, SSL_AD_UNKNOWN_PSK_IDENTITY,
                 SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE,
                 SSL_R_PSK_IDENTITY_NOT_FOUND);
        return 0;
    }

    OPENSSL_free(s->s3->tmp.psk);
    s->s3->tmp.psk = OPENSSL_memdup(psk, psklen);
    OPENSSL_cleanse(psk, psklen);

    if (s->s3->tmp.psk == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    s->s3->tmp.psklen = psklen;

    return 1;






}
