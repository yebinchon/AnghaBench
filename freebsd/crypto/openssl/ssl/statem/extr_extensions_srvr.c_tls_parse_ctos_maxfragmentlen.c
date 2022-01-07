
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_8__ {TYPE_2__* session; scalar_t__ hit; } ;
struct TYPE_6__ {unsigned int max_fragment_len_mode; } ;
struct TYPE_7__ {TYPE_1__ ext; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;


 int IS_MAX_FRAGMENT_LENGTH_EXT_VALID (unsigned int) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN ;
 int SSL_R_BAD_EXTENSION ;
 int SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;

int tls_parse_ctos_maxfragmentlen(SSL *s, PACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{
    unsigned int value;

    if (PACKET_remaining(pkt) != 1 || !PACKET_get_1(pkt, &value)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }


    if (!IS_MAX_FRAGMENT_LENGTH_EXT_VALID(value)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN,
                 SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH);
        return 0;
    }






    if (s->hit && s->session->ext.max_fragment_len_mode != value) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN,
                 SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH);
        return 0;
    }





    s->session->ext.max_fragment_len_mode = value;
    return 1;
}
