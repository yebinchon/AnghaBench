
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {int login; } ;
struct TYPE_6__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int PACKET_as_length_prefixed_1 (int *,int *) ;
 scalar_t__ PACKET_contains_zero_byte (int *) ;
 int PACKET_strndup (int *,int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PARSE_CTOS_SRP ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

int tls_parse_ctos_srp(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{
    PACKET srp_I;

    if (!PACKET_as_length_prefixed_1(pkt, &srp_I)
            || PACKET_contains_zero_byte(&srp_I)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_SRP,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }





    if (!PACKET_strndup(&srp_I, &s->srp_ctx.login)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_SRP,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
