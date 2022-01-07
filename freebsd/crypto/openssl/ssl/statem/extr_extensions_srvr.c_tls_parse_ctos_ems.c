
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {TYPE_1__* s3; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_F_TLS_PARSE_CTOS_EMS ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int TLS1_FLAGS_RECEIVED_EXTMS ;

int tls_parse_ctos_ems(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{

    if (PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_EMS, SSL_R_BAD_EXTENSION);
        return 0;
    }

    s->s3->flags |= TLS1_FLAGS_RECEIVED_EXTMS;

    return 1;
}
