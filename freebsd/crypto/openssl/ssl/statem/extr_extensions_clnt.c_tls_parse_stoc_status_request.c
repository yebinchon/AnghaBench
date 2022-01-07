
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_7__ {scalar_t__ status_type; int status_expected; } ;
struct TYPE_8__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_UNSUPPORTED_EXTENSION ;
 unsigned int SSL_EXT_TLS1_3_CERTIFICATE_REQUEST ;
 int SSL_F_TLS_PARSE_STOC_STATUS_REQUEST ;
 scalar_t__ SSL_IS_TLS13 (TYPE_2__*) ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ TLSEXT_STATUSTYPE_ocsp ;
 int tls_process_cert_status_body (TYPE_2__*,int *) ;

int tls_parse_stoc_status_request(SSL *s, PACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{
    if (context == SSL_EXT_TLS1_3_CERTIFICATE_REQUEST) {


        return 1;
    }





    if (s->ext.status_type != TLSEXT_STATUSTYPE_ocsp) {
        SSLfatal(s, SSL_AD_UNSUPPORTED_EXTENSION,
                 SSL_F_TLS_PARSE_STOC_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
        return 0;
    }
    if (!SSL_IS_TLS13(s) && PACKET_remaining(pkt) > 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_STOC_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (SSL_IS_TLS13(s)) {



        if (chainidx != 0)
            return 1;


        return tls_process_cert_status_body(s, pkt);
    }


    s->ext.status_expected = 1;

    return 1;
}
