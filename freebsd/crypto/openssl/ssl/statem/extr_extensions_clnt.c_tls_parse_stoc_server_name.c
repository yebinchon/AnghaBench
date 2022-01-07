
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_9__ {int * hostname; } ;
struct TYPE_10__ {TYPE_2__* session; TYPE_3__ ext; int hit; } ;
struct TYPE_7__ {int * hostname; } ;
struct TYPE_8__ {TYPE_1__ ext; } ;
typedef TYPE_4__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int * OPENSSL_strdup (int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PARSE_STOC_SERVER_NAME ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;

int tls_parse_stoc_server_name(SSL *s, PACKET *pkt, unsigned int context,
                               X509 *x, size_t chainidx)
{
    if (s->ext.hostname == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_SERVER_NAME,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (PACKET_remaining(pkt) > 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_SERVER_NAME,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (!s->hit) {
        if (s->session->ext.hostname != ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_SERVER_NAME,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        s->session->ext.hostname = OPENSSL_strdup(s->ext.hostname);
        if (s->session->ext.hostname == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_SERVER_NAME,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    return 1;
}
