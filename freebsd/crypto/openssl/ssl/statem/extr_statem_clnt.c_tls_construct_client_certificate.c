
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_18__ {TYPE_5__* method; TYPE_3__* cert; TYPE_2__* s3; int pha_context_len; int * pha_context; } ;
struct TYPE_17__ {TYPE_4__* ssl3_enc; } ;
struct TYPE_16__ {int (* change_cipher_state ) (TYPE_6__*,int) ;} ;
struct TYPE_15__ {int * key; } ;
struct TYPE_13__ {int cert_req; } ;
struct TYPE_14__ {TYPE_1__ tmp; } ;
typedef TYPE_6__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL3_CC_HANDSHAKE ;
 int SSL3_CHANGE_CIPHER_CLIENT_WRITE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_NO_ALERT ;
 int SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE ;
 scalar_t__ SSL_IS_FIRST_HANDSHAKE (TYPE_6__*) ;
 scalar_t__ SSL_IS_TLS13 (TYPE_6__*) ;
 int SSL_R_CANNOT_CHANGE_CIPHER ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_sub_memcpy_u8 (int *,int *,int ) ;
 int ssl3_output_cert_chain (TYPE_6__*,int *,int *) ;
 int stub1 (TYPE_6__*,int) ;

int tls_construct_client_certificate(SSL *s, WPACKET *pkt)
{
    if (SSL_IS_TLS13(s)) {
        if (s->pha_context == ((void*)0)) {

            if (!WPACKET_put_bytes_u8(pkt, 0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE, ERR_R_INTERNAL_ERROR);
                return 0;
            }
        } else if (!WPACKET_sub_memcpy_u8(pkt, s->pha_context, s->pha_context_len)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE, ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }
    if (!ssl3_output_cert_chain(s, pkt,
                                (s->s3->tmp.cert_req == 2) ? ((void*)0)
                                                           : s->cert->key)) {

        return 0;
    }

    if (SSL_IS_TLS13(s)
            && SSL_IS_FIRST_HANDSHAKE(s)
            && (!s->method->ssl3_enc->change_cipher_state(s,
                    SSL3_CC_HANDSHAKE | SSL3_CHANGE_CIPHER_CLIENT_WRITE))) {




        SSLfatal(s, SSL_AD_NO_ALERT, SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE,
                 SSL_R_CANNOT_CHANGE_CIPHER);
        return 0;
    }

    return 1;
}
