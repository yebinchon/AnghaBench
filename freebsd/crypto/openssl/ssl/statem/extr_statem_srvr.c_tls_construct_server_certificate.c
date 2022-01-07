
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_10__ {TYPE_2__* s3; } ;
struct TYPE_8__ {int * cert; } ;
struct TYPE_9__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef int CERT_PKEY ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_SERVER_CERTIFICATE ;
 scalar_t__ SSL_IS_TLS13 (TYPE_3__*) ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int ssl3_output_cert_chain (TYPE_3__*,int *,int *) ;

int tls_construct_server_certificate(SSL *s, WPACKET *pkt)
{
    CERT_PKEY *cpk = s->s3->tmp.cert;

    if (cpk == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_CERTIFICATE, ERR_R_INTERNAL_ERROR);
        return 0;
    }





    if (SSL_IS_TLS13(s) && !WPACKET_put_bytes_u8(pkt, 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_CERTIFICATE, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!ssl3_output_cert_chain(s, pkt, cpk)) {

        return 0;
    }

    return 1;
}
